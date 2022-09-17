BEGIN{
  sum=0
  }
  $5=="Seattle"{
    sum += $3
    }
  END{
    printf("Total cost = %.2f per hour\n", sum)
    }
