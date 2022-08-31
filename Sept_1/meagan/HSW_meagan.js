function high(x){
    let wordArr = x.split(" ");
    let highScoreVal = 0;
    let highScoreWord = "";
    
    let alphabetValues = {
      "a": 1,
      "b": 2,
      "c": 3,
      "d": 4,
      "e": 5,
      "f": 6,
      "g": 7,
      "h": 8,
      "i": 9,
      "j": 10,
      "k": 11,
      "l": 12,
      "m": 13,
      "n": 14,
      "o": 15,
      "p": 16,
      "q": 17,
      "r": 18,
      "s": 19,
      "t": 20,
      "u": 21,
      "v": 22,
      "w": 23,
      "x": 24,
      "y": 25,
      "z": 26
    }
    
    for(let i=0; i < wordArr.length; i++) {
      let currWord = wordArr[i];
      let currWordVal = 0;
      
      for(let j=0; j < currWord.length; j++) {
        let currLetter = currWord[j];
        let currLetterVal = alphabetValues[currLetter];
        currWordVal+=currLetterVal;      
      } 
      
  //     if(currWordVal === highScoreVal) {
  //       continue;
  //     }
      
      if(currWordVal > highScoreVal) {
        highScoreVal = currWordVal;
        highScoreWord = currWord;
      }
    }
    
    return(highScoreWord);
  }