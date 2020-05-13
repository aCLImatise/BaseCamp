version 1.0

task SmofSort {
  input {
    String regexRegex
    Boolean reverseReverse
    Boolean numericNumericSort
    Boolean lengthLengthSort
    Boolean randomRandomSort
    String keyKey
    String fieldFieldSeparator
    String pairPairSeparator
    String? inputInput
  }
  command <<<
    smof sort \
      ~{inputInput} \
      ~{if defined(regexRegex) then ("--regex " +  '"' + regexRegex + '"') else ""} \
      ~{true="--reverse" false="" reverseReverse} \
      ~{true="--numeric-sort" false="" numericNumericSort} \
      ~{true="--length-sort" false="" lengthLengthSort} \
      ~{true="--random-sort" false="" randomRandomSort} \
      ~{if defined(keyKey) then ("--key " +  '"' + keyKey + '"') else ""} \
      ~{if defined(fieldFieldSeparator) then ("--field-separator " +  '"' + fieldFieldSeparator + '"') else ""} \
      ~{if defined(pairPairSeparator) then ("--pair-separator " +  '"' + pairPairSeparator + '"') else ""}
  >>>
}