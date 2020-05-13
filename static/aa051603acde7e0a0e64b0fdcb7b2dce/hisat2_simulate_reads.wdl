version 1.0

task Hisat2SimulateReads.py {
  input {
    Boolean dnaDna
    Boolean singleSingleEnd
    String readReadLength
    String fragmentFragmentLength
    String numNumFragment
    String exprExprProfile
    String repeatRepeatInfo
    String errorErrorRate
    Int maxMaxMismatch
    String randomRandomSeed
    String snpSnpProb
    Boolean sanitySanityCheck
    Boolean verboseVerbose
    String? genomeGenomeFile
    String? gtfGtfFile
    String? snpSnpFile
    String? baseBaseFname
  }
  command <<<
    hisat2_simulate_reads.py \
      ~{genomeGenomeFile} \
      ~{true="--dna" false="" dnaDna} \
      ~{true="--single-end" false="" singleSingleEnd} \
      ~{if defined(readReadLength) then ("--read-length " +  '"' + readReadLength + '"') else ""} \
      ~{if defined(fragmentFragmentLength) then ("--fragment-length " +  '"' + fragmentFragmentLength + '"') else ""} \
      ~{if defined(numNumFragment) then ("--num-fragment " +  '"' + numNumFragment + '"') else ""} \
      ~{if defined(exprExprProfile) then ("--expr-profile " +  '"' + exprExprProfile + '"') else ""} \
      ~{if defined(repeatRepeatInfo) then ("--repeat-info " +  '"' + repeatRepeatInfo + '"') else ""} \
      ~{if defined(errorErrorRate) then ("--error-rate " +  '"' + errorErrorRate + '"') else ""} \
      ~{if defined(maxMaxMismatch) then ("--max-mismatch " +  '"' + maxMaxMismatch + '"') else ""} \
      ~{if defined(randomRandomSeed) then ("--random-seed " +  '"' + randomRandomSeed + '"') else ""} \
      ~{if defined(snpSnpProb) then ("--snp-prob " +  '"' + snpSnpProb + '"') else ""} \
      ~{true="--sanity-check" false="" sanitySanityCheck} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{gtfGtfFile} \
      ~{snpSnpFile} \
      ~{baseBaseFname}
  >>>
}