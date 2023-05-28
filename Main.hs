import GrammarParser (Command(..), parseCommand, parseProgram, identifier, executeCommand)
import Text.ParserCombinators.Parsec

generatePythonCode :: [Command] -> String
generatePythonCode commands = unlines $
  [ "from robodk.robolink import *"
  , "from robodk.robomath import *"
  , ""
  , "RDK = Robolink()"
  , ""
  , "robot = RDK.Item('KUKA KR 6 R900 sixx', ITEM_TYPE_ROBOT)"
  ] ++ map generateCommandCode commands

generateCommandCode :: Command -> String
generateCommandCode (Goto targetName) =
  unlines
    [ ""
    , "target = RDK.Item('" ++ targetName ++ "')"
    , "target_pose = target.Pose()"
    , "xyz_ref = target_pose.Pos()"
    , ""
    , "robot.MoveJ(target)"
    ]


main :: IO ()
main = do
  putStrLn "Digite o programa:"
  program <- getLine

  let result = parse parseProgram "" program
  case result of
    Left err -> putStrLn ("Erro de parsing: " ++ show err)
    Right commands -> do
      let pythonCode = generatePythonCode commands
      writeFile "output.py" pythonCode