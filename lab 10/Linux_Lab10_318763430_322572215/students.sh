#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: ./students.sh <filename>"
    exit 1
fi

input_file="$1"
output_file="OSStudents.data"

eligible_students=$(cat "$input_file" | while read -r line; do
    student_id=$(echo "$line" | cut -d' ' -f1)
    student_name=$(echo "$line" | cut -d' ' -f2)
    python_grade=$(echo "$line" | cut -d' ' -f4)
    linux_grade=$(echo "$line" | cut -d' ' -f6)

    if [ "$python_grade" -ge 56 ] && [ "$linux_grade" -ge 56 ]; then
        echo "$student_id $student_name $python_grade $linux_grade"
    fi
done)

total_students=$(echo "$eligible_students" | wc -l | tr -d ' ')

sorted_students=$(echo "$eligible_students" | while read -r line; do
    student_id=$(echo "$line" | cut -d' ' -f1)
    student_name=$(echo "$line" | cut -d' ' -f2)
    python_grade=$(echo "$line" | cut -d' ' -f3)
    linux_grade=$(echo "$line" | cut -d' ' -f4)
    avg=$(( (python_grade + linux_grade) / 2 ))
    echo "$student_id $student_name $avg"
done | sort -k3,3nr)

echo "$sorted_students" | while read -r line; do
    student_id=$(echo "$line" | cut -d' ' -f1)
    student_name=$(echo "$line" | cut -d' ' -f2)
    echo "$student_id $student_name"
done > "$output_file"

echo "Sum: $total_students students" >> "$output_file"
