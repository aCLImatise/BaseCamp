version 1.0

task MbPlotMetageneNobsParclip {
  input {
    String? downstream
    String mb_plot_meta_gene_nobs
  }
  command <<<
    mb-plot-metagene-nobs parclip \
      ~{mb_plot_meta_gene_nobs} \
      ~{if defined(downstream) then ("--downstream " +  '"' + downstream + '"') else ""}
  >>>
  parameter_meta {
    downstream: ""
    mb_plot_meta_gene_nobs: ""
  }
}