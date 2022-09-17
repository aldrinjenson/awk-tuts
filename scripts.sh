# ---
# total number of entries = 4514
# ---

# "How much money does the janitor make.."
awk '($6=="Janitor") {print "Janitor makes", $3, "Dollars"}' payroll.tsv 

# Print name of the CEO
awk '$6~/^CEO$/{printf("%s, %s\n", $2, $1)}' *.tsv

# print employee working in springfield office
awk '$5~/Springfield/{print $1, $2}' *.tsv
awk '$5=="Springfield"{print $1, $2}' *.tsv

# how many mechanical engineers work there
awk '$6=="MechanicalEngineer"' *.tsv | wc -l

# how many people from te Portwood family work here
awk '$2=="Portwood"{print $1}' *.tsv | wc -l

# People with identical first and last names
awk '$2==$1{print $1}' *.tsv | wc -l

# Print each column header along wth the column number: eg: 2 - LastName
awk 'NR==1{for(i = 1; i <= NF; i ++) print i, $i}' *.tsv

# How much money per hour does the Seattle office cost?

# How many engineers work here?
awk 'BEGIN{num=0}$6~/Engineer/{num+=1}END{print num}' *.tsv
awk '/Engineer/' *.tsv | wc -l

# Find the highest paid employee
awk '//' *.tsv | sort -k 3 -n | tail -1 | awk '{printf("%s %s is the most paid person\n", $1, $2)}'

# Who works the most hours?
sort -n -k 4 *.tsv | tail -1 | awk '{printf("%s, %s works the most\n",$1, $2)}'

# Anonymouse the data by removing the first 2 columns. Print all remaining columns
cut -f3- *.tsv

# Add line numbers to the above data
cut -f3- *.tsv | awk '{print NR:, $0}'
awk -f anonymousData.awk *.tsv | awk '{print(NR":",$0)}'

#How many different office locations does the company have?
awk 'NR>1{print $5}' *.tsv| sort | uniq | awk 'END {print NR - 1}'

# Identify duplicate entries. people with same first name, last name appearing multiple times
# check the identifyDuplicate script
# using a hashmap

# Find the first employee hired
sort -k 7 payroll.tsv | head -2 | awk '{print $1, $2, $7}'


