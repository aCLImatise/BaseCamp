version 1.0

task MbplotmetagenenobsPrefix {
  input {
    String? downstream
    String mb_plot_meta_gene_nobs
  }
  command <<<
    mb_plot_metagene_nobs prefix \
      ~{mb_plot_meta_gene_nobs} \
      ~{if defined(downstream) then ("--downstream " +  '"' + downstream + '"') else ""}
  >>>
  parameter_meta {
    downstream: ""
    mb_plot_meta_gene_nobs: ""
  }
  output {
    File out_stdout = stdout()
  }
}