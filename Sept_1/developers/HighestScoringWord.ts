// Given a string of words, you need to find the highest scoring word.

// Each letter of a word scores points according to its position in the alphabet: a = 1, b = 2, c = 3 etc.

// You need to return the highest scoring word as a string.

// If two words score the same, return the word that appears earliest in the original string.

// All letters will be lowercase and all inputs will be valid.

console.log(HighestScoringWord());

function HighestScoringWord(){
    const sentence = "Hello, ice, aBBa, ABAB";
    let word = sentence.toLowerCase();
    let oneWord = "";
    let score = 0;
    let i = 0;
    let x = 0;
    let newValue = 0;
    let highestWord = "";
    let highestScore = 0;
    let wordsArray = word.split(',');

    while(x < wordsArray.length){

    oneWord = wordsArray[x];

    while(i < oneWord.length){
        
        let asciiFuntion = function (i: number, oneWord: string) : number {
           return oneWord.charCodeAt(i);
           
        }

        let ascii = asciiFuntion(i, oneWord);

            if ( ascii== 32 || ascii == 44){
                ascii = 96;
            }else{}
            newValue = ascii-96;
            score += newValue;
            i++;
        }
        
        i = 0;

        if(score > highestScore){
            highestScore = score;
            highestWord = wordsArray[x];
        }
        score = 0;
        x++;
    }

    return(highestWord);
}