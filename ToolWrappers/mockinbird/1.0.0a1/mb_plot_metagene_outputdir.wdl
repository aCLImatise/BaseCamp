version 1.0

task MbplotmetageneOutputdir {
  input {
    String? downstream_bp
    String mb_plot_meta_gene
  }
  command <<<
    mb_plot_metagene outputdir \
      ~{mb_plot_meta_gene} \
      ~{if defined(downstream_bp) then ("--downstream_bp " +  '"' + downstream_bp + '"') else ""}
  >>>
  parameter_meta {
    downstream_bp: ""
    mb_plot_meta_gene: ""
  }
  output {
    File out_stdout = stdout()
  }
}