%{
#include<stdio.h>
#include<string.h>
int vowels=0;
int cons=0;
%}
%%
[aeiouAEIOU] {vowels++;}
[a-zA-Z] {cons++;}
%%
int yywrap(){
return 1;}
int main(){
printf("enter the string.. at end press ^d\n");
yylex();
printf("vowels=%d\nconsonants=%d\n",vowels,cons);
return 0;}
