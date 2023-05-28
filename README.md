# DSL para manipulação de braço robótico usando o simulador RoboDK instalada ao SO Linux.

Esse projeto tem a proposta de criar uma DSL (Linguagem de domínio especifico) com a finalidade de permitir que profissionais consigam manipular braços robóticos através do simulador RoboDK. A DSL será desenvolvida em Python usando biblioteca textX para especificação da gramática formal.

 # Contexto

Apesar de já haver linguagens de programação que possam fazer essa função, geralmente essas linguagens necessitam de um certo conhecimento de programação para a sua utilização, portanto, pretendemos criar uma DSL para que profissionais possam manipular braços robóticos de uma forma mais eficiente e sem necessariamente possuírem conhecimentos em linguagens de programação.

## BNF

command         ::= "goto" targetName
targetName      ::= identifier
identifier      ::= letter (letter | digit | '_')*
letter          ::= 'a' | 'b' | 'c' | ... | 'z' | 'A' | 'B' | 'C' | ... | 'Z'
digit           ::= '0' | '1' | '2' | '3' | '4' | '5' | '6' | '7' | '8' | '9'

## GRAMÁTICA

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

# Equipe

Fabiano Carlos da Silva - fcs3@cin.ufpe.br

Alex Cordeiro Cunha - acc3@cin.ufpe.br
