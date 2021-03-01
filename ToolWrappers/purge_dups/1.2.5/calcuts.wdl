version 1.0

task Calcuts {
  input {
    Boolean? float_minimum_depth
    Boolean? int_lower_bound
    Boolean? int_transition_haploid
    Boolean? int_upper_bound
    Boolean? treat_haploid_others
    String? options
    String stat
  }
  command <<<
    calcuts \
      ~{options} \
      ~{stat} \
      ~{if (float_minimum_depth) then "-f" else ""} \
      ~{if (int_lower_bound) then "-l" else ""} \
      ~{if (int_transition_haploid) then "-m" else ""} \
      ~{if (int_upper_bound) then "-u" else ""} \
      ~{if (treat_haploid_others) then "-d" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/purge_dups:1.2.5--hed695b0_0"
  }
  parameter_meta {
    float_minimum_depth: "FLOAT    minimum depth count fraction to maximum depth count [.1]"
    int_lower_bound: "INT      lower bound for read depth"
    int_transition_haploid: "INT      transition between haploid and diploid"
    int_upper_bound: "INT      upper bound for read depth"
    treat_haploid_others: "treat as haploid assembly or diploid assembly, 1: haploid, others: diploid [0]"
    options: ""
    stat: ""
  }
  output {
    File out_stdout = stdout()
  }
}