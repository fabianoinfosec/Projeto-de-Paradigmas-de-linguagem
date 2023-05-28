module GrammarParser (Command(..), parseCommand, parseProgram, identifier, executeCommand) where

import Text.ParserCombinators.Parsec

data Command = Goto String deriving Show

parseCommand :: Parser Command
parseCommand = do
  string "goto"
  spaces
  targetName <- identifier
  return (Goto targetName)

parseProgram :: Parser [Command]
parseProgram = sepEndBy parseCommand spaces

identifier :: Parser String
identifier = do
  first <- letter
  rest <- many (letter <|> digit <|> char '_')
  return (first:rest)

executeCommand :: Command -> IO ()
executeCommand (Goto targetName) = do
  putStrLn ("Movendo-se para a target: " ++ targetName)
  
executeProgram :: [Command] -> IO ()
executeProgram commands = mapM_ executeCommand commands

parserMain :: IO ()
parserMain = do
  putStrLn "Digite o alvo:"
  program <- getLine

  let result = parse parseProgram "" program
  case result of
    Left err -> putStrLn ("Erro de parsing: " ++ show err)
    Right commands -> executeProgram commands