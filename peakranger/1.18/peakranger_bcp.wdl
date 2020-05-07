version 1.0

task PeakrangerBcp {
  input {
    Boolean dD
    Boolean cC
    String formatFormat
    Boolean oO
    Boolean reportReport
    String plotPlotRegion
    String geneGeneAnNotFile
    Boolean pP
    String winWinSize
    Boolean lL
    Boolean verboseVerbose
  }
  command <<<
    peakranger bcp \
      ~{true="-d" false="" dD} \
      ~{true="-c" false="" cC} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{true="-o" false="" oO} \
      ~{true="--report" false="" reportReport} \
      ~{if defined(plotPlotRegion) then ("--plot_region " +  '"' + plotPlotRegion + '"') else ""} \
      ~{if defined(geneGeneAnNotFile) then ("--gene_annot_file " +  '"' + geneGeneAnNotFile + '"') else ""} \
      ~{true="-p" false="" pP} \
      ~{if defined(winWinSize) then ("--win_size " +  '"' + winWinSize + '"') else ""} \
      ~{true="-l" false="" lL} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}