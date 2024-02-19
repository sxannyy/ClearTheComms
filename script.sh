#!/bin/bash
echo "Введите имя файла для обработки: "
read filename

echo "Введите ключевое слово для определения секции: "
read section_keyword

in_section=false
while read line
do
    if [[ $line == *"$section_keyword"* ]]; then
        in_section=true
    fi

    if [[ $in_section == true ]]; then
        echo "$line" | sed '/^[[:space:]]*#/d' >> output.bak
    else
        echo "$line" >> output.bak
    fi
done < "$filename"

echo "Готово. Резервная копия создана в файле output.bak"
