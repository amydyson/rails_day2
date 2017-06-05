// Use the Luhn Formula
//
// Drop the last digit from the number. The last digit is what we want to check against
// Reverse the numbers
// Multiply the digits in odd positions (1, 3, 5, etc.) by 2 and subtract 9 to all any result higher than 9
// Add all the numbers together
// The check digit (the last number of the card) is the amount that you would need to add to get a multiple of 10 (Modulo 10).
// Hints:
//
// Assume that the credit card number is 16 digits.
// To return a specified character from a string use charAt( ). See: Description.
// You do not need to reverse the numbers.
// Create a function that accesses the digits string at the right (in reverse).
// To create a number from a string in javascript use parseInt( ). See: Description.
// (x>9)*(-9) returns -9 if x is higher than 9.



// Reverse
function reverseCcnum(str) {
return str[14] +  str[13] +  str[12] +  str[11] +  str[10] +  str[9] +  str[8] +  str[7] +  str[6] +  str[5] +  str[4] +  str[3] +  str[2] +  str[1] +  str[0]
}

// Multply odd by 2
// function step2(str) {
// return (str[0] * 2) +  str[1] +  (str[2] * 2) +  str[3] +  (str[4] * 2) +  str[5] +  (str[6] * 2) +  str[7] +  (str[8] * 2) +  str[9] +  (str[10] * 2) +  str[11] +  (str[12] * 2) +  str[13] +  (str[14] * 2)
// }

// Subtract 9 to numbers over 9
// function sub9(str) {
// str[0  ]


function exp(str, index) {
  var x = str[index]
  var y = x*2
  y = y +((y>9)*-9)
  return y
}

// New Step 2
function step2(str) {
return exp(str, 0) +  str[1] +  exp(str, 2) +  str[3] +  exp(str, 4) +  str[5] +  exp(str, 6) +  str[7] +  exp(str, 8) +  str[9] +  exp(str, 10) +  str[11] +  exp(str, 12) +  str[13] +  exp(str, 14)
}

// Add Toghter
function add(str) {
  return parseInt(str[0], 10) + parseInt(str[1], 10) + parseInt(str[2], 10) + parseInt(str[3], 10) + parseInt(str[4], 10) + parseInt(str[5], 10) + parseInt(str[6], 10) + parseInt(str[7], 10) + parseInt(str[8], 10) + parseInt(str[9], 10) + parseInt(str[10], 10) + parseInt(str[11], 10) + parseInt(str[12], 10) + parseInt(str[13], 10) + parseInt(str[14], 10)
}

//  Mod
function modCheck(num1, num2) {
return num1%10===num2
}
function main() {
 //  Main Program
 // var ccNum = "4556737586899855"
 var ccNum = prompt("Give me a credit card number")
 var lastDigit = ccNum[15]
// First 15 digits reversed
 var reverse = reverseCcnum(ccNum)
// Multiply odd by 2 and did the 9 thing
 var part2 = step2(reverse)
// add all digits toghter
 var part3 = add(part2)
 // mod check
 console.log("Credit Card is valid: " + modCheck(part3, lastDigit))
}

// 4556737586899855
