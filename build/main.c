#include "stdio.h"
#include "math.h"
#include "stdlib.h"
#include "errno.h"
int just = 3;
int main() {
	just+=1;
	const char* fname = "/build/data.txt";
	printf("hello");
    FILE *file = fopen(fname, "r"); // 打开文件并获取文件指针
    if (file == NULL) {
        perror("");
    }
    lgamma(-2.5);
    char name[20];
    int age;
    double height;
    // 使用 fscanf 从文件中读取数据
    while (fscanf(file, "%s %d %lf", name, &age, &height) == 3) {
    	fclose(file);
    	FILE *fp = fdopen(1, "w");
    	fprintf(fp, "Name:  %s, Age:   %d, Height:   %lf\n",name,age,height);
    	return atoi("123")+1;
    }
    fclose(file);
     // 关闭文件
     //exit(10);
     return 0;
}
