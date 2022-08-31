// pseudocode
// 1. create a year counter variable to track the number of years
// 2. while the population is less than the target number...
//    - increase the population by the percent and the added population provided
//    - increase the year counter by one
// 3. once the population is greater than the target number, return however many years have passed

// edge cases - what could go wrong?
// - certain percentages of certain numbers could give us decimals
// - would we ever see a population decrease? 
// - would we ever see a 0% increase? 


int nbYear(num p0, num percent, num aug, num p) {
  int i = 0;

  while (p0 < p) {
    p0 = p0 + (p0 * percent / 100) + aug;
    
    i++;
  }
  return (i);
}

void main() {
  nbYear(1000, 2.0, 50, 1214);
}
