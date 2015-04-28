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
|           expression PLUS expression
|           expression MINUS expression
|           expression TIMES expression
|           expression DIVIDE expresssion
|           expression MOD expression
|           expression CAT expression
|           LPAREN expression RPAREN

number:     INT
|           DOUBLE

boolean:    TRUE
|           FALSE
