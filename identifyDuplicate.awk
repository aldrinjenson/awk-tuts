# Note:  you don't have to initialize arrays beforehand in awk

# function getName(first, last){
#  return first last
# }

BEGIN{
count = 0
}

NR > 1 {
  if (names[$1,$2] == 1){
    count += 1;
    print( $1, $2)
  }else
    names[$1,$2] = 1;
}

END{
  printf("there are %d duplicate entries",count )
}
