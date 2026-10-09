#!/bin/sh

# Folder create karna
mkdir -p linux-practicals
cd linux-practicals

# 1. Practical 1
cat << 'EOF' > practical_01_basiccmd.sh
# Practical 1: Basic & User status Unix/Linux Commands
# Run karne ke liye: sh practical_01_basiccmd.sh

echo "========================================="
echo " BASIC & USER STATUS UNIX/LINUX COMMANDS"
echo "========================================="
echo ""

echo "1. Current User:"
whoami
echo ""

echo "2. User ID and Group ID:"
id
echo ""

echo "3. Currently Logged-in Users:"
who
echo ""

echo "4. User Login Details:"
w
echo ""

echo "5. Current Date and Time:"
date
echo ""

echo "6. System Hostname:"
hostname
echo ""

echo "7. Current Working Directory:"
pwd
echo ""

echo "8. Operating System Information:"
uname -a
echo ""

echo "9. System Uptime:"
uptime
echo ""

echo "10. Current Shell:"
echo $SHELL
echo ""

echo "11. Home Directory:"
echo $HOME
echo ""

echo "12. List of Files in Current Directory:"
ls -l
echo ""

echo "========================================="
echo " Script Execution Completed"
echo "========================================="
EOF

# 2. Practical 2
cat << 'EOF' > practical_02_arithmetic.sh
# Practical 2: Arithmetic operations (Sum, Average, Product)
# Run karne ke liye: sh practical_02_arithmetic.sh

echo "Enter four integers with space between:"
read a b c d

sum=`expr $a + $b + $c + $d`
avg=`expr $sum / 4`
dec=`expr $sum % 4`
dec=`expr \( $dec \* 1000 \) / 4`
product=`expr $a \* $b \* $c \* $d`

echo "Sum=$sum"
echo "Average=$avg.$dec"
echo "Product=$product"
EOF

# 3. Practical 3
cat << 'EOF' > practical_03_clwc.sh
# Practical 3: Count lines, words, and characters in a file
# Run karne ke liye: sh practical_03_clwc.sh

echo "Enter filename:"
read file

if [ -f "$file" ]; then
    echo "Number of lines:"
    wc -l < "$file"
    echo "Number of words:"
    wc -w < "$file"
    echo "Number of characters:"
    wc -m < "$file"
else
    echo "File does not exist."
fi
EOF

# 4. Practical 4
cat << 'EOF' > practical_04_commname.sh
# Practical 4: Display names found in both files
# Run karne ke liye: sh practical_04_commname.sh

echo "Enter first file name:"
read file1
echo "Enter second file name:"
read file2

echo "Names found in both files:"
grep -Fxf "$file1" "$file2"
EOF

# 5. Practical 5
cat << 'EOF' > practical_05_inodescrt.sh
# Practical 5: Find out the inode number of any file
# Run karne ke liye: sh practical_05_inodescrt.sh

echo "Enter the file name:"
read filename

if [ -f "$filename" ]; then
    echo "Inode number of $filename is:"
    ls -i "$filename"
else
    echo "File does not exist."
fi
EOF

# 6. Practical 6
cat << 'EOF' > practical_06_permissions.sh
# Practical 6: Demonstration of chmod, chown and chgrp commands
# Run karne ke liye: sh practical_06_permissions.sh

echo "=== 1. Testing symbolic chmod ==="
echo "this is permission testing file." > modetest.txt
ls -l modetest.txt
chmod u=rw,go=rw modetest.txt
ls -l modetest.txt

echo "=== 2. Testing octal chmod ==="
echo "this is permission testing file." > chmodetest.txt
chmod 674 chmodetest.txt
ls -l chmodetest.txt

echo "=== 3. chown & chgrp demonstration ==="
touch lab.txt
ls -l lab.txt
EOF

# 7. Practical 7
cat << 'EOF' > practical_07_montsaveinf.sh
# Practical 7: Pipeline to display and save logged-in user count
# Run karne ke liye: sh practical_07_montsaveinf.sh

echo "Currently Logged-in Users:"
who | tee users.txt

echo ""
echo "Number of users currently using the system:"
who | wc -l | tee -a users.txt
EOF

# 8. Practical 10
cat << 'EOF' > practical_10_revarg.sh
# Practical 10: Print command-line arguments in reverse order
# Run karne ke liye: sh practical_10_revarg.sh Apple Mango Banana Orange

echo "Arguments in reverse order:"
args=""
for arg in $*
do
    args="$arg$args"
done

echo $args
EOF

# 9. Practical 11
cat << 'EOF' > practical_11_smallfromthree.sh
# Practical 11: Find the smallest of three numbers
# Run karne ke liye: sh practical_11_smallfromthree.sh

echo "Enter three numbers:"
read a b c

if [ $a -lt$b ] && [ $a -lt$c ]; then
    echo "$a is the smallest"
elif [ $b -lt$a ] && [ $b -lt$c ]; then
    echo "$b is the smallest"
else
    echo "$c is the smallest"
fi
EOF

chmod +x *.sh
echo "All practical files successfully created inside 'linux-practicals' folder!"