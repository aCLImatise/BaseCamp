version 1.0

task Cstacks {
  input {
    Boolean inInPath
    Boolean popPopMap
    Boolean nN
    Boolean threadsThreads
    Boolean sS
    Boolean outOutPath
    File catalogCatalog
    Boolean maxMaxGaps
    Boolean minMinAlnLen
    Boolean disableDisableGapped
    String kKLen
    Boolean reportReportMMatches
  }
  command <<<
    cstacks \
      ~{true="--in-path" false="" inInPath} \
      ~{true="--popmap" false="" popPopMap} \
      ~{true="-n" false="" nN} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="-s" false="" sS} \
      ~{true="--outpath" false="" outOutPath} \
      ~{if defined(catalogCatalog) then ("--catalog " +  '"' + catalogCatalog + '"') else ""} \
      ~{true="--max-gaps" false="" maxMaxGaps} \
      ~{true="--min-aln-len" false="" minMinAlnLen} \
      ~{true="--disable-gapped" false="" disableDisableGapped} \
      ~{if defined(kKLen) then ("--k-len " +  '"' + kKLen + '"') else ""} \
      ~{true="--report-mmatches" false="" reportReportMMatches}
  >>>
}