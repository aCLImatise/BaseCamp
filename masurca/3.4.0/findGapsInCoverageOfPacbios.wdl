version 1.0

task FindGapsInCoverageOfPacbios {
  input {
    File inputInputFile
    Int maxMaxGapOverlap
    Int minMinOvlImpliedVsGapEnd
    Int minMinMatchLenForImpliedMatch
    String? cmdlineCmdlineParse
  }
  command <<<
    findGapsInCoverageOfPacbios \
      ~{cmdlineCmdlineParse} \
      ~{if defined(inputInputFile) then ("--input-file " +  '"' + inputInputFile + '"') else ""} \
      ~{if defined(maxMaxGapOverlap) then ("--max-gap-overlap " +  '"' + maxMaxGapOverlap + '"') else ""} \
      ~{if defined(minMinOvlImpliedVsGapEnd) then ("--min-ovl-implied-vs-gap-end " +  '"' + minMinOvlImpliedVsGapEnd + '"') else ""} \
      ~{if defined(minMinMatchLenForImpliedMatch) then ("--min-match-len-for-implied-match " +  '"' + minMinMatchLenForImpliedMatch + '"') else ""}
  >>>
}