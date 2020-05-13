version 1.0

task PeakrangerCcat {
  input {
    Boolean dD
    Boolean cC
    String formatFormat
    Boolean oO
    Boolean reportReport
    String plotPlotRegion
    String geneGeneAnNotFile
    Boolean qQ
    String winWinSize
    String winWinStep
    String minMinCount
    String minMinScore
    Boolean lL
    Boolean tT
    Boolean verboseVerbose
  }
  command <<<
    peakranger ccat \
      ~{true="-d" false="" dD} \
      ~{true="-c" false="" cC} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{true="-o" false="" oO} \
      ~{true="--report" false="" reportReport} \
      ~{if defined(plotPlotRegion) then ("--plot_region " +  '"' + plotPlotRegion + '"') else ""} \
      ~{if defined(geneGeneAnNotFile) then ("--gene_annot_file " +  '"' + geneGeneAnNotFile + '"') else ""} \
      ~{true="-q" false="" qQ} \
      ~{if defined(winWinSize) then ("--win_size " +  '"' + winWinSize + '"') else ""} \
      ~{if defined(winWinStep) then ("--win_step " +  '"' + winWinStep + '"') else ""} \
      ~{if defined(minMinCount) then ("--min_count " +  '"' + minMinCount + '"') else ""} \
      ~{if defined(minMinScore) then ("--min_score " +  '"' + minMinScore + '"') else ""} \
      ~{true="-l" false="" lL} \
      ~{true="-t" false="" tT} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}