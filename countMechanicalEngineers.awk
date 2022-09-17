#/usr/bin/awk
# Script to count the number of mechanical engineers from the payroll csv

BEGIN{
  count = 0
}
$6=="MechanicalEngineer"{
  count+=1
}
END{
  print count
}


