version 1.0

task GmcloserNucmer.pl {
  input {
    String longLongRead
    String lrLrCov
    String minMinQAlign
    String iterateIterate
    String alignAlignQ
  }
  command <<<
    gmcloser-nucmer.pl \
      ~{if defined(longLongRead) then ("--long_read " +  '"' + longLongRead + '"') else ""} \
      ~{if defined(lrLrCov) then ("--lr_cov " +  '"' + lrLrCov + '"') else ""} \
      ~{if defined(minMinQAlign) then ("--min_qalign " +  '"' + minMinQAlign + '"') else ""} \
      ~{if defined(iterateIterate) then ("--iterate " +  '"' + iterateIterate + '"') else ""} \
      ~{if defined(alignAlignQ) then ("--alignq " +  '"' + alignAlignQ + '"') else ""}
  >>>
}