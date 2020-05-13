version 1.0

task Covtobed {
  input {
    Boolean physicalPhysicalCoverage
    Int minMinMapq
    Int minMinCov
    Int maxMaxCov
    Int minMinLen
    Boolean discardDiscardInvalidAlignments
    Boolean outputOutputStrands
    String formatFormat
  }
  command <<<
    covtobed \
      ~{true="--physical-coverage" false="" physicalPhysicalCoverage} \
      ~{if defined(minMinMapq) then ("--min-mapq " +  '"' + minMinMapq + '"') else ""} \
      ~{if defined(minMinCov) then ("--min-cov " +  '"' + minMinCov + '"') else ""} \
      ~{if defined(maxMaxCov) then ("--max-cov " +  '"' + maxMaxCov + '"') else ""} \
      ~{if defined(minMinLen) then ("--min-len " +  '"' + minMinLen + '"') else ""} \
      ~{true="--discard-invalid-alignments" false="" discardDiscardInvalidAlignments} \
      ~{true="--output-strands" false="" outputOutputStrands} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""}
  >>>
}