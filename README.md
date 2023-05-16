# DSL para manipulação de braço robótico usando o simulador RoboDK instalada ao SO Linux.

Esse projeto tem a proposta de criar uma DSL (Linguagem de domínio especifico) com a finalidade de permitir que profissionais consigam manipular braços robóticos através do simulador RoboDK. A DSL será desenvolvida em Python usando biblioteca textX para especificação da gramática formal.

 # Contexto

Apesar de já haver linguagens de programação que possam fazer essa função, geralmente essas linguagens necessitam de um certo conhecimento de programação para a sua utilização, portanto, pretendemos criar uma DSL para que profissionais possam manipular braços robóticos de uma forma mais eficiente e sem necessariamente possuírem conhecimentos em linguagens de programação.

## BNF

< string > ::= < alphas >

< integer > ::= < nums >

< grammar > ::= < string > "string1" < string > "string2" < integer > "integer"

## GRAMÁTICA

from pyparsing import Word, alphas, nums

string = Word(alphas)
integer = Word(nums).setParseAction(lambda t: int(t[0]))

grammar = string("string1") + string("string2") + integer("integer")

# Equipe

Fabiano Carlos da Silva - fcs3@cin.ufpe.br

Alex Cordeiro Cunha - acc3@cin.ufpe.br
