version 1.0

task RnaclustCleanAlnpl {
  input {
    String rna_clust_gen_report_do_tpl
  }
  command <<<
    rnaclustCleanAln_pl \
      ~{rna_clust_gen_report_do_tpl}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    rna_clust_gen_report_do_tpl: ""
  }
  output {
    File out_stdout = stdout()
  }
}