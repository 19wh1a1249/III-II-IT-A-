%{
#include<stdio.h>
int l=0,s=0,t=0,c=0;
%}

%%
\n {l++;}
([ ])+ {s++;}
\t {t++;}
. {c++;}

%%
int yywrap(void){}

int main(){
yylex();
printf("\nlines=%d",l);
printf("\nspaces=%d",s);
printf("\ntabs=%d",t);
printf("\notherchar=%d\n",c);
}

