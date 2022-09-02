// Given a string s consisting of words and spaces, return the length of the last word in the string.

// A word is a maximal substring consisting of non-space characters only.

function lengthOfLastWord(s: string): number {
    //hello here is a comment
    s = s.trim();
    
    const sList = s.split(' ')

    let lastWord = sList[sList.length-1]

    let lastWordLength = lastWord.length
    
    return lastWordLength;
};