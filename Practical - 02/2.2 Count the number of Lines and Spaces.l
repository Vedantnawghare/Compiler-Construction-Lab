%{
#include<stdio.h>

int lines=0, spaces=0;
%}

%%

\n      { lines++; }
" "     { spaces++; }
.       ;

%%

int yywrap()
{
    return 1;
}

int main()
{
    yyin = fopen("input.txt","r");
    yylex();

    printf("Lines  : %d\n", lines+1);
    printf("Spaces : %d\n", spaces);

    return 0;
}

