version 1.0

task Stellar {
  input {
    Boolean versionVersionCheck
    String epsilonEpsilon
    Int minlengthMinlength
    Boolean forwardForward
    Boolean reverseReverse
    String alphabetAlphabet
    Boolean verboseVerbose
    Int kmKmEr
    Int repeatRepeatPeriod
    Int repeatRepeatLength
    String abundanceAbundanceCut
    String xXDrop
    String verificationVerification
    Int disableDisableThresh
    Int numNumMatches
    Int sortSortThresh
    String outOut
    String outOutDisabled
  }
  command <<<
    stellar \
      ~{if defined(versionVersionCheck) then ("--version-check " +  '"' + versionVersionCheck + '"') else ""} \
      ~{if defined(epsilonEpsilon) then ("--epsilon " +  '"' + epsilonEpsilon + '"') else ""} \
      ~{if defined(minlengthMinlength) then ("--minLength " +  '"' + minlengthMinlength + '"') else ""} \
      ~{true="--forward" false="" forwardForward} \
      ~{true="--reverse" false="" reverseReverse} \
      ~{if defined(alphabetAlphabet) then ("--alphabet " +  '"' + alphabetAlphabet + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(kmKmEr) then ("--kmer " +  '"' + kmKmEr + '"') else ""} \
      ~{if defined(repeatRepeatPeriod) then ("--repeatPeriod " +  '"' + repeatRepeatPeriod + '"') else ""} \
      ~{if defined(repeatRepeatLength) then ("--repeatLength " +  '"' + repeatRepeatLength + '"') else ""} \
      ~{if defined(abundanceAbundanceCut) then ("--abundanceCut " +  '"' + abundanceAbundanceCut + '"') else ""} \
      ~{if defined(xXDrop) then ("--xDrop " +  '"' + xXDrop + '"') else ""} \
      ~{if defined(verificationVerification) then ("--verification " +  '"' + verificationVerification + '"') else ""} \
      ~{if defined(disableDisableThresh) then ("--disableThresh " +  '"' + disableDisableThresh + '"') else ""} \
      ~{if defined(numNumMatches) then ("--numMatches " +  '"' + numNumMatches + '"') else ""} \
      ~{if defined(sortSortThresh) then ("--sortThresh " +  '"' + sortSortThresh + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(outOutDisabled) then ("--outDisabled " +  '"' + outOutDisabled + '"') else ""}
  >>>
}