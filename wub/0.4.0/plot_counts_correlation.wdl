version 1.0

task PlotCountsCorrelation.py {
  input {
    String rR
    String tT
    String tT
    String oO
    String? countsCountsOne
    String? countsCountsTwo
  }
  command <<<
    plot_counts_correlation.py \
      ~{countsCountsOne} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{countsCountsTwo}
  >>>
}