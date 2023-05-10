# DSL para manipulação de braço robótico usando o simulador RoboDK instalada ao SO Linux.

Esse projeto tem a proposta de criar uma DSL (Linguagem de domínio especifico) com a finalidade de permitir que profissionais consigam manipular braços robóticos através do simulador RoboDK. Pretendemos utilizar para esse fim, uma linguagem funcional voltada para visualização de DATASETS.

 # Contexto

Apesar de já haver linguagens de programação que possam fazer essa função (Linguagem “R”, por exemplo), geralmente essas linguagens necessitam de um certo conhecimento de programação para a sua utilização, portanto, pretendemos criar uma DSL para que profissionais de saúde possam programar consultas e analisar DATASETS de uma forma mais eficiente e sem necessariamente possuírem conhecimentos em linguagens de programação.

# BNF

program ::= command*
 
command ::= label | entry | checkbutton | radiobutton | button
 
label ::= "label" string
 
entry ::= "entry" string
 
checkbutton ::= "checkbutton" String string
 
radiobutton ::= "radiobutton" string string string string
 
button ::= "button" string string

# Equipe

Fabiano Carlos da Silva - fcs3@cin.ufpe.br

Alex Cordeiro Cunha - acc3@cin.ufpe.br
