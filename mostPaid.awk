# To be fixed! Timestamp = 25
BEGIN{
  mostPaidPerson=""
  mostPay=0
  }
  $0 !~ /HourlyWage/{
    if ($3 >= mostPay){
      mostPay = $3
      mostPaidPerson = sprintf("%s, %s",$1, $2)
      }
    }
  END{
    printf("%s is the most paid person", mostPaidPerson)

    }
