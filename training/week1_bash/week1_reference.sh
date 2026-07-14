#!/bin/bash

echo "=== 1: Basic navigation ==="
pwd

echo "=== 2: Listing files ==="
ls -la

echo "=== 3: Creating a test file ==="
echo "Hello Bioinformatics" > practice.txt
echo "Learning Linux" >> practice.txt

echo "=== 4: Reading the file ==="
cat practice.txt

echo "=== 5: Searching with grep ==="
grep "Linux" practice.txt

echo "=== 6: Counting lines ==="
cat practice.txt | wc -l

echo "=== 7: Simple loop ==="
for i in 1 2 3 4 5; do
    echo $i
done

echo "=== 8: Loop over folder files ==="
for file in *.md; do
    if [ -f "$file" ]; then
        lines=$(wc -l < "$file")
        echo "File: $file - Lines: $lines"
    fi
done

# Clean up the test file when done
rm -f practice.txt

echo "=== Done! ==="
