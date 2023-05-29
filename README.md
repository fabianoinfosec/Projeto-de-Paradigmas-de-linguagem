# DSL para manipulação de braço robótico usando o simulador RoboDK instalada ao SO Linux.

Esse projeto tem a proposta de criar uma DSL (Linguagem de domínio especifico) com a finalidade de permitir que profissionais consigam manipular braços robóticos através do simulador RoboDK. A DSL será desenvolvida em Haskell que irá gerar um programa em Python responsável pela comunicação com o Robo DK.

 # Contexto

Apesar de já haver linguagens de programação que possam fazer essa função, geralmente essas linguagens necessitam de um certo conhecimento de programação para a sua utilização, portanto, pretendemos criar uma DSL para que profissionais possam manipular braços robóticos de uma forma mais eficiente e sem necessariamente possuírem conhecimentos em linguagens de programação.

## BNF

command         ::= <a href="https://github.com/fabianoinfosec/Projeto-de-Paradigmas-de-linguagem/blob/Projeto/GrammarParser.hs">"goto" targetName</a> 

targetName      ::= <a href="https://github.com/fabianoinfosec/Projeto-de-Paradigmas-de-linguagem/blob/Projeto/GrammarParser.hs">identifier</a> 

identifier      ::= <a href="https://github.com/fabianoinfosec/Projeto-de-Paradigmas-de-linguagem/blob/Projeto/GrammarParser.hs">letter (letter | digit | '_')*</a>

letter          ::= <a href="https://github.com/fabianoinfosec/Projeto-de-Paradigmas-de-linguagem/blob/Projeto/GrammarParser.hs">'a' | 'b' | 'c' | ... | 'z' | 'A' | 'B' | 'C' | ... | 'Z'</a>

digit           ::= <a href="https://github.com/fabianoinfosec/Projeto-de-Paradigmas-de-linguagem/blob/Projeto/GrammarParser.hs">'0' | '1' | '2' | '3' | '4' | '5' | '6' | '7' | '8' | '9'</a>


# Equipe

Fabiano Carlos da Silva - fcs3@cin.ufpe.br

Alex Cordeiro Cunha - acc3@cin.ufpe.br
