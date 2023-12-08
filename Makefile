CC=gcc
main.out: main
  ./main | tee main.out
main: main.o get_student_id.o
  gcc main.o get_student_id.o -o main
main.o:
  gcc -c main.c
get_student_id.o:
  gcc -c main.c
