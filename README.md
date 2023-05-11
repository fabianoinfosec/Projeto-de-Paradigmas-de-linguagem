# DSL para manipulação de braço robótico usando o simulador RoboDK instalada ao SO Linux.

Esse projeto tem a proposta de criar uma DSL (Linguagem de domínio especifico) com a finalidade de permitir que profissionais consigam manipular braços robóticos através do simulador RoboDK. A DSL será desenvolvida em Python usando biblioteca textX para especificação da gramática formal.

 # Contexto

Apesar de já haver linguagens de programação que possam fazer essa função, geralmente essas linguagens necessitam de um certo conhecimento de programação para a sua utilização, portanto, pretendemos criar uma DSL para que profissionais possam manipular braços robóticos de uma forma mais eficiente e sem necessariamente possuírem conhecimentos em linguagens de programação.

# Gramática

Model: commands*=Command; Command: "move" source=TARGET "to" target=TARGET; TARGET: /[a-zA-Z0-9_]+/;

BNF

<start> ::= (<name> | <email>)*

<name> ::= <NAME>

<email> ::= <EMAIL>

<NAME> ::= (["a"-"z","A"-"Z"])+

<EMAIL> ::= (["a"-"z","A"-"Z","0"-"9","+","-","_",".","@"])+

# Equipe

Fabiano Carlos da Silva - fcs3@cin.ufpe.br

Alex Cordeiro Cunha - acc3@cin.ufpe.br
