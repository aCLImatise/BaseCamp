version 1.0

task AnviExportSplitsAndCoverages {
  input {
    String profileProfileDb
    String contigsContigsDb
    String outputOutputDir
    File outputOutputFilePrefix
    Boolean splitsSplitsMode
    Boolean reportReportContigs
    Boolean useUseQ2q3Coverages
  }
  command <<<
    anvi-export-splits-and-coverages \
      ~{if defined(profileProfileDb) then ("--profile-db " +  '"' + profileProfileDb + '"') else ""} \
      ~{if defined(contigsContigsDb) then ("--contigs-db " +  '"' + contigsContigsDb + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output-dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(outputOutputFilePrefix) then ("--output-file-prefix " +  '"' + outputOutputFilePrefix + '"') else ""} \
      ~{true="--splits-mode" false="" splitsSplitsMode} \
      ~{true="--report-contigs" false="" reportReportContigs} \
      ~{true="--use-Q2Q3-coverages" false="" useUseQ2q3Coverages}
  >>>
}