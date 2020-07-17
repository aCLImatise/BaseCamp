version 1.0

task RnaclustCleanAln.pl {
  input {
    String rna_clust_gen_report_do_tpl
    String dir
  }
  command <<<
    rnaclustCleanAln.pl \
      ~{rna_clust_gen_report_do_tpl} \
      ~{dir}
  >>>
  parameter_meta {
    rna_clust_gen_report_do_tpl: ""
    dir: ""
  }
}