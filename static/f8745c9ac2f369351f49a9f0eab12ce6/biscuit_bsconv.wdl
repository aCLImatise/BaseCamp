version 1.0

task BiscuitBsconv {
  input {
    Boolean? region
    Boolean? filter_unclear_bsstrand
    Boolean? filter_maximum_cph_retention
    Boolean? filter_maximum_cph_retention_fraction
    Boolean? filter_maximum_cpa
    Boolean? filter_maximum_cpc
    Boolean? filter_maximum_cpt
    Boolean? print_tab_cpac
    Boolean? show_filtered_instead
    String bs_conv
    String ref_dot_fa
    String in_dot_bam
    String? out_dot_bam
  }
  command <<<
    biscuit bsconv \
      ~{bs_conv} \
      ~{ref_dot_fa} \
      ~{in_dot_bam} \
      ~{out_dot_bam} \
      ~{if (region) then "-g" else ""} \
      ~{if (filter_unclear_bsstrand) then "-u" else ""} \
      ~{if (filter_maximum_cph_retention) then "-m" else ""} \
      ~{if (filter_maximum_cph_retention_fraction) then "-f" else ""} \
      ~{if (filter_maximum_cpa) then "-a" else ""} \
      ~{if (filter_maximum_cpc) then "-c" else ""} \
      ~{if (filter_maximum_cpt) then "-t" else ""} \
      ~{if (print_tab_cpac) then "-b" else ""} \
      ~{if (show_filtered_instead) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    region: "region."
    filter_unclear_bsstrand: "filter unclear bs-strand (YD:u) reads [OFF]."
    filter_maximum_cph_retention: "filter: maximum CpH retention [Inf]"
    filter_maximum_cph_retention_fraction: "filter: maximum CpH retention fraction [1.0]"
    filter_maximum_cpa: "filter: maximum CpA retention [Inf]"
    filter_maximum_cpc: "filter: maximum CpC retention [Inf]"
    filter_maximum_cpt: "filter: maximum CpT retention [Inf]"
    print_tab_cpac: "print in tab, CpA_R, CpA_C, CpC_R, CpC_C, CpG_R, CpG_C, CpT_R, CpT_C"
    show_filtered_instead: "show filtered instead of remained [False]"
    bs_conv: ""
    ref_dot_fa: ""
    in_dot_bam: ""
    out_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}