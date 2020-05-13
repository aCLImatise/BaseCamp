version 1.0

task PlotTaxaSummary.py {
  input {
    String countsCountsFname
  }
  command <<<
    plot_taxa_summary.py \
      ~{if defined(countsCountsFname) then ("--counts_fname " +  '"' + countsCountsFname + '"') else ""}
  >>>
}