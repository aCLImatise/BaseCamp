version 1.0

task PeakrangerRanger {
  input {
    Boolean dD
    Boolean cC
    String formatFormat
    Boolean oO
    Boolean reportReport
    String plotPlotRegion
    String geneGeneAnNotFile
    Boolean pP
    Boolean qQ
    Boolean lL
    Boolean rR
    Boolean bB
    Boolean padPad
    Boolean tT
    Boolean verboseVerbose
  }
  command <<<
    peakranger ranger \
      ~{true="-d" false="" dD} \
      ~{true="-c" false="" cC} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{true="-o" false="" oO} \
      ~{true="--report" false="" reportReport} \
      ~{if defined(plotPlotRegion) then ("--plot_region " +  '"' + plotPlotRegion + '"') else ""} \
      ~{if defined(geneGeneAnNotFile) then ("--gene_annot_file " +  '"' + geneGeneAnNotFile + '"') else ""} \
      ~{true="-p" false="" pP} \
      ~{true="-q" false="" qQ} \
      ~{true="-l" false="" lL} \
      ~{true="-r" false="" rR} \
      ~{true="-b" false="" bB} \
      ~{true="--pad" false="" padPad} \
      ~{true="-t" false="" tT} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}