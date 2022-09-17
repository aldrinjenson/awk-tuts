BEGIN{
sum = 0
count = 0
}
NR>1{
sum += $3
count += 1
}
END{
printf("Average Hourly wage = %.2f dollars per hour", sum/(NR-1))
}
