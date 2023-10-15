1) Посмотреть где я: ```pwd```
2) Создать папку: ```mkdir folder0```
3) Зайти в папку: cd folder0
4) Создать 3 папки: mkdir folder_name1, folder_name2, folder_name3
5) Зайти в любоую папку: cd folder_name1
6) Создать 5 файлов (3 txt, 2 json): touch file{1..3}.txt, file{4..5}.json
7) Создать 3 папки: mkdir folder{1..3}
8) Вывести список содержимого папки: ls -a 
                         (+скрытые, но -атрибуты)
9) + Открыть любой txt файл: cat file3.txt
10) + написать туда что-нибудь, любой текст.: cat >> file3.txt
text in file3.txt
11
222
333
4
5
11) + сохранить и выйти.: ctrl+c
12) Выйти из папки на уровень выше: cd ..
—
13) переместить любые 2 файла, которые вы создали, в любую другую папку.:  mv folder_name1/file{1..2}.txt .
14) скопировать любые 2 файла, которые вы создали, в любую другую папку.: cp folder_name1/file{4..5}.json .
15) Найти файл по имени:  find . -name "file*"
16) просмотреть содержимое в реальном времени (команда grep) изучите как она работает.: tail -f file3.txt 
 выйти: ctrl+c
17) вывести несколько первых строк из текстового файла: head -n 3 file3.txt
18) вывести несколько последних строк из текстового файла: tail -n 5 file3.txt
19) просмотреть содержимое длинного файла (команда less) изучите как она работает.: less +F file3.txt
20) вывести дату и время: date
=========

Задание *
1) Отправить http запрос на сервер.
http://162.55.220.72:5006/terminal-hw-request

curl http://162.55.220.72:5006/terminal-hw-request

curl http://162.55.220.72:5005/get_method?name=Elena&age=24



2) Написать скрипт который выполнит автоматически пункты 3, 4, 5, 6, 7, 8, 13
______________________________
Зайти в папку: cd folder0
Создать 3 папки: mkdir folder_name1, folder_name2, folder_name3
Зайти в любоую папку: cd folder_name1
Создать 5 файлов (3 txt, 2 json): touch file{1..3}.txt, file{4..5}.json
Создать 3 папки: mkdir folder{1..3}
Вывести список содержимого папки: ls -la 
переместить любые 2 файла, которые вы создали, в любую другую папку.:  mv folder_name1/file{1..2}.txt .
______________________________
команды для исполнения скрипта
chmod +x ./scrforhw1.sh

./scrforhw1.sh
____________
#!/bin/bash

FOLDER="f_for_s"
 rm -r ${FOLDER}
mkdir ${FOLDER}
echo "go to ${FOLDER}"
cd $FOLDER
echo "create 3 new folders"
mkdir folder_{1..3}
echo "go to folder_1"
cd folder_1
echo "go back to ${FOLDER}"
cd ..
echo "create 5 new files"
touch fileskr{1..3}.txt fileskr{4..5}.json
echo "${FOLDER} contains:"
ls -la
echo "move 2 files to folder_2"
mv fileskr{1..2}.txt folder_2/
exit 0






