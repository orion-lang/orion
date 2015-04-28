statement:  assignment
|           loop
|           if
|           case
|           expression SEMI

statements: statements statement
|           statement

block:      statement
|           LBRACE statements RBRACE

assignment: ID EQ expression
|           TYPE ID EQ expression

loop:       LOOP LPAREN expression RPAREN block
|           LOOP LPAREN opt_expression SEMI opt_expression SEMI opt_expression RPAREN block
|           LOOP LPAREN ID IN expression RPAREN block

//if statements are in reality more complex to write in bison
if:         IF exp block
|           IF exp block ELSE block
|           IF exp block esleifs
|           IF exp block elseifs ELSE block

elseifs:    elseifs ELSEIF block
|           /* empty */

switch:     SWITCH exp LBRACE cases RBRACE

cases:      cases CASE exp block
|           /* empty */

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
