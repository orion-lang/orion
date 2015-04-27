statement:  assignment
|           loop

statements: statements statement
|           statement

block:      statement
|           LBRACE statements RBRACE

assignment: ID EQ expression
|           TYPE ID EQ expression

loop:       LOOP LPAREN expression RPAREN block
|           LOOP LPAREN opt_expression SEMI opt_expression SEMI opt_expression RPAREN block
|           LOOP LPAREN ID IN expression RPAREN block

expression: number
|           string
|           boolean

number:     INT
|           DOUBLE

boolean:    TRUE
|           FALSE
