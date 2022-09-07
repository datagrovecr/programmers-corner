//Your task is to write a function which returns the sum of following series upto nth term(parameter).
// Series: 1 + 1/4 + 1/7 + 1/10 + 1/13 + 1/16 +...
//You need to round the answer to 2 decimal places and return it as String.
//You will only be given Natural Numbers as arguments.



function SeriesSum(n) {
    for (var s = 0, i = 0; i < n; i++) {
      s += 1 / (1 + i * 3)
    }
    return s.toFixed(2)
  }

console.log(SeriesSum(5));