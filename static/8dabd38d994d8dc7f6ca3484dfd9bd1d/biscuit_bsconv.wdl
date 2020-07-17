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
    Boolean? print_tab_cpar
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
      ~{true="-g" false="" region} \
      ~{true="-u" false="" filter_unclear_bsstrand} \
      ~{true="-m" false="" filter_maximum_cph_retention} \
      ~{true="-f" false="" filter_maximum_cph_retention_fraction} \
      ~{true="-a" false="" filter_maximum_cpa} \
      ~{true="-c" false="" filter_maximum_cpc} \
      ~{true="-t" false="" filter_maximum_cpt} \
      ~{true="-b" false="" print_tab_cpar} \
      ~{true="-v" false="" show_filtered_instead}
  >>>
  parameter_meta {
    region: "region."
    filter_unclear_bsstrand: "filter unclear bs-strand (YD:u) reads [OFF]."
    filter_maximum_cph_retention: "filter: maximum CpH retention [Inf]"
    filter_maximum_cph_retention_fraction: "filter: maximum CpH retention fraction [1.0]"
    filter_maximum_cpa: "filter: maximum CpA retention [Inf]"
    filter_maximum_cpc: "filter: maximum CpC retention [Inf]"
    filter_maximum_cpt: "filter: maximum CpT retention [Inf]"
    print_tab_cpar: "print in tab, CpA_R, CpA_C, CpC_R, CpC_C, CpG_R, CpG_C, CpT_R, CpT_C"
    show_filtered_instead: "show filtered instead of remained [False]"
    bs_conv: ""
    ref_dot_fa: ""
    in_dot_bam: ""
    out_dot_bam: ""
  }
}