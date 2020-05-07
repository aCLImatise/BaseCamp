version 1.0

task TEcount {
  input {
    String bamBam
    String gtfGtf
    String teTe
    String formatFormat
    String strandedStranded
    String modeMode
    String projectProject
    Boolean sortSortByPos
    String iterationIteration
    Int maxMaxL
    Int minMinL
    String fragmentFragmentLength
    String verboseVerbose
  }
  command <<<
    TEcount \
      ~{if defined(bamBam) then ("--BAM " +  '"' + bamBam + '"') else ""} \
      ~{if defined(gtfGtf) then ("--GTF " +  '"' + gtfGtf + '"') else ""} \
      ~{if defined(teTe) then ("--TE " +  '"' + teTe + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(strandedStranded) then ("--stranded " +  '"' + strandedStranded + '"') else ""} \
      ~{if defined(modeMode) then ("--mode " +  '"' + modeMode + '"') else ""} \
      ~{if defined(projectProject) then ("--project " +  '"' + projectProject + '"') else ""} \
      ~{true="--sortByPos" false="" sortSortByPos} \
      ~{if defined(iterationIteration) then ("--iteration " +  '"' + iterationIteration + '"') else ""} \
      ~{if defined(maxMaxL) then ("--maxL " +  '"' + maxMaxL + '"') else ""} \
      ~{if defined(minMinL) then ("--minL " +  '"' + minMinL + '"') else ""} \
      ~{if defined(fragmentFragmentLength) then ("--fragmentLength " +  '"' + fragmentFragmentLength + '"') else ""} \
      ~{if defined(verboseVerbose) then ("--verbose " +  '"' + verboseVerbose + '"') else ""}
  >>>
}