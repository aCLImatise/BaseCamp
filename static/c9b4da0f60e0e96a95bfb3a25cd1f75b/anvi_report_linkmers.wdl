version 1.0

task AnviReportLinkmers {
  input {
    String iI
    String contigsContigsAndPositions
    Boolean onlyOnlyCompleteLinks
    File outputOutputFile
    Boolean listListContigs
  }
  command <<<
    anvi-report-linkmers \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(contigsContigsAndPositions) then ("--contigs-and-positions " +  '"' + contigsContigsAndPositions + '"') else ""} \
      ~{true="--only-complete-links" false="" onlyOnlyCompleteLinks} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{true="--list-contigs" false="" listListContigs}
  >>>
}