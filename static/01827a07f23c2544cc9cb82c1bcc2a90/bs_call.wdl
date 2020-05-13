version 1.0

task BsCall {
  input {
    Boolean noNoSplit
    Boolean haploidHaploid
    Boolean keepKeepDuplicates
    Boolean ignoreIgnoreDuplicates
    Boolean keepKeepUnmatched
    Boolean extraExtraStats
    Boolean rightRightTrim
    Boolean leftLeftTrim
    Boolean blankBlankTrim
    Int mapqMapqThreshold
    Int bqBqThreshold
    Int maxMaxTemplateLength
    Int realignRealignTolerance
    Float conversionConversion
    Float referenceReferenceBias
  }
  command <<<
    bs_call \
      ~{true="--no-split" false="" noNoSplit} \
      ~{true="--haploid" false="" haploidHaploid} \
      ~{true="--keep-duplicates" false="" keepKeepDuplicates} \
      ~{true="--ignore-duplicates" false="" ignoreIgnoreDuplicates} \
      ~{true="--keep-unmatched" false="" keepKeepUnmatched} \
      ~{true="--extra-stats" false="" extraExtraStats} \
      ~{true="--right-trim" false="" rightRightTrim} \
      ~{true="--left-trim" false="" leftLeftTrim} \
      ~{true="--blank-trim" false="" blankBlankTrim} \
      ~{if defined(mapqMapqThreshold) then ("--mapq-threshold " +  '"' + mapqMapqThreshold + '"') else ""} \
      ~{if defined(bqBqThreshold) then ("--bq-threshold " +  '"' + bqBqThreshold + '"') else ""} \
      ~{if defined(maxMaxTemplateLength) then ("--max-template-length " +  '"' + maxMaxTemplateLength + '"') else ""} \
      ~{if defined(realignRealignTolerance) then ("--realign-tolerance " +  '"' + realignRealignTolerance + '"') else ""} \
      ~{if defined(conversionConversion) then ("--conversion " +  '"' + conversionConversion + '"') else ""} \
      ~{if defined(referenceReferenceBias) then ("--reference-bias " +  '"' + referenceReferenceBias + '"') else ""}
  >>>
}