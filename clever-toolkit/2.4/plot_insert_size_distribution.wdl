version 1.0

task PlotInsertSizeDistribution {
  input {
    String oO
    String qQ
    String nN
    String xXRange
    String yYRange
    String? distributionDistributionFile
  }
  command <<<
    plot-insert-size-distribution \
      ~{distributionDistributionFile} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(xXRange) then ("--xrange " +  '"' + xXRange + '"') else ""} \
      ~{if defined(yYRange) then ("--yrange " +  '"' + yYRange + '"') else ""}
  >>>
}