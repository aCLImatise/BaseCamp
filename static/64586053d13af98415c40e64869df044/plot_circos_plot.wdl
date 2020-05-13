version 1.0

task PlotCircosPlot.py {
  input {
    String summarySummary
    String regionRegion
    Boolean srnSrnAs
    String knownKnown
    String refseqRefseqDir
    String ecEcDir
    String chrChrN
    String printPrintChr
    Int minMinInteractions
    String ecEcChrList
    String? readsReadsIn
  }
  command <<<
    plot_circos_plot.py \
      ~{readsReadsIn} \
      ~{if defined(summarySummary) then ("--summary " +  '"' + summarySummary + '"') else ""} \
      ~{if defined(regionRegion) then ("--region " +  '"' + regionRegion + '"') else ""} \
      ~{true="--sRNAs" false="" srnSrnAs} \
      ~{if defined(knownKnown) then ("--known " +  '"' + knownKnown + '"') else ""} \
      ~{if defined(refseqRefseqDir) then ("--refseq_dir " +  '"' + refseqRefseqDir + '"') else ""} \
      ~{if defined(ecEcDir) then ("--ec_dir " +  '"' + ecEcDir + '"') else ""} \
      ~{if defined(chrChrN) then ("--chrn " +  '"' + chrChrN + '"') else ""} \
      ~{if defined(printPrintChr) then ("--print_chr " +  '"' + printPrintChr + '"') else ""} \
      ~{if defined(minMinInteractions) then ("--min_interactions " +  '"' + minMinInteractions + '"') else ""} \
      ~{if defined(ecEcChrList) then ("--EC_chrlist " +  '"' + ecEcChrList + '"') else ""}
  >>>
}