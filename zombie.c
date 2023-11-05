
#include<stdio.h>
#include<unistd.h>
#include<stdlib.h>
#include<sys/types.h>
void asscending(int *a,int size);
void descending(int *a,int size);
int main(){
int a[] ={2,3,1,4,5};
pid_t pid;
pid=fork();
if(pid == 0 ){
/*//zombie
descending(a,5);
exit(0);
}else{
sleep(10);
asscending(a,5);*/

/*//orphan
sleep(10);
descending(a,5);
}else{
asscending(a,5);*/


}
return 0;
}
void asscending(int *a,int size){
int b;
for (int i = 0; i < size; ++i){
for (int j = i + 1; j < size; ++j){
if (a[i] > a[j]){
b = a[i];
a[i] = a[j];
a[j] = b;
}
}
}
printf("this is parent pocess\n");
for(int i=0;i<size;i++){
printf("%d ", a[i]);
}
printf("\n");}
void descending(int *a,int size){
int b;
for (int i = 0; i < size; ++i){
for (int j = i + 1; j < size; ++j){
if (a[i] < a[j]){
b = a[i];
a[i] = a[j];
a[j] = b;
}
}
}
printf("this is child process\n");
for(int i=0;i<size;i++){
printf("%d ", a[i]);
}
printf("\n");
}
