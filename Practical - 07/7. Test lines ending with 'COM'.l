Vedant Nawghare
24070521047
A2

%{
#include <stdio.h>
%}

%%
.*(com|COM)$ {printf("The line ends with com");}
.*           {printf("The line doesn't end with com");}
\n ;
%%

int main() {
    printf("Enter lines ending with 'com' or 'COM' : ");
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
