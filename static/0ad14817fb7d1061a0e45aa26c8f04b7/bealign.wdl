version 1.0

task Bealign {
  input {
    String referenceReference
    String expectedExpectedIdentity
    String alphabetAlphabet
    String scoreScoreMatrix
    String discardDiscard
    Boolean reverseReverseComplement
    Boolean noNoSort
    Boolean quietQuiet
    Boolean keepKeepReference
    String? inputInput
    String? outputOutput
  }
  command <<<
    bealign \
      ~{inputInput} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(expectedExpectedIdentity) then ("--expected-identity " +  '"' + expectedExpectedIdentity + '"') else ""} \
      ~{if defined(alphabetAlphabet) then ("--alphabet " +  '"' + alphabetAlphabet + '"') else ""} \
      ~{if defined(scoreScoreMatrix) then ("--score-matrix " +  '"' + scoreScoreMatrix + '"') else ""} \
      ~{if defined(discardDiscard) then ("--discard " +  '"' + discardDiscard + '"') else ""} \
      ~{true="--reverse-complement" false="" reverseReverseComplement} \
      ~{true="--no-sort" false="" noNoSort} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--keep-reference" false="" keepKeepReference} \
      ~{outputOutput}
  >>>
}