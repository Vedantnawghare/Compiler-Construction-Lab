%{
#include<stdio.h>
int yylex();
int yyerror(char *s);
%}

%token number

%%
input: 
| input stmt
;
stmt: exp '\n' {printf("Result: %d\n",$1);}
;

exp : number {$$ = $1;}
|exp exp '+' {$$ = $1 + $2;}
|exp exp '*' {$$ = $1 * $2;}
;
%%



int main(){
		yyparse();
		return 0;
}

int yyerror(char *s){
		printf("Error");
		return 0;
}

