version 1.0

task DAssembler {
  input {
    Int maxMaxOverlap
    Int maxMaxMismatch
    Int minMinCoverage
    Int readReadLength
    Boolean verboseVerbose
    String? readsReads
  }
  command <<<
    DAssembler \
      ~{readsReads} \
      ~{if defined(maxMaxOverlap) then ("--max_overlap " +  '"' + maxMaxOverlap + '"') else ""} \
      ~{if defined(maxMaxMismatch) then ("--max_mismatch " +  '"' + maxMaxMismatch + '"') else ""} \
      ~{if defined(minMinCoverage) then ("--min_coverage " +  '"' + minMinCoverage + '"') else ""} \
      ~{if defined(readReadLength) then ("--read_length " +  '"' + readReadLength + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}