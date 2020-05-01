version 1.0

task CentrifugeSimulateReads.py {
  input {
    Boolean rnaRna
    Boolean singleSingleEnd
    String readReadLength
    String fragmentFragmentLength
    String numNumFragment
    String exprExprProfile
    String errorErrorRate
    Int maxMaxMismatch
    String randomRandomSeed
    Boolean sanitySanityCheck
    Boolean verboseVerbose
    String? indexIndexFname
    String? baseBaseFname
  }
  command <<<
    centrifuge_simulate_reads.py \
      ~{indexIndexFname} \
      ~{true="--rna" false="" rnaRna} \
      ~{true="--single-end" false="" singleSingleEnd} \
      ~{if defined(readReadLength) then ("--read-length " +  '"' + readReadLength + '"') else ""} \
      ~{if defined(fragmentFragmentLength) then ("--fragment-length " +  '"' + fragmentFragmentLength + '"') else ""} \
      ~{if defined(numNumFragment) then ("--num-fragment " +  '"' + numNumFragment + '"') else ""} \
      ~{if defined(exprExprProfile) then ("--expr-profile " +  '"' + exprExprProfile + '"') else ""} \
      ~{if defined(errorErrorRate) then ("--error-rate " +  '"' + errorErrorRate + '"') else ""} \
      ~{if defined(maxMaxMismatch) then ("--max-mismatch " +  '"' + maxMaxMismatch + '"') else ""} \
      ~{if defined(randomRandomSeed) then ("--random-seed " +  '"' + randomRandomSeed + '"') else ""} \
      ~{true="--sanity-check" false="" sanitySanityCheck} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{baseBaseFname}
  >>>
}