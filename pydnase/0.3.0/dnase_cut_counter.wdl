version 1.0

task DnaseCutCounter.pyOutput {
  input {
    Boolean? a
    String dnase_cut_counter_do_tpy
    String regions
    String reads
    String var_output
  }
  command <<<
    dnase_cut_counter.py output \
      ~{dnase_cut_counter_do_tpy} \
      ~{regions} \
      ~{reads} \
      ~{var_output} \
      ~{true="-A" false="" a}
  >>>
  parameter_meta {
    a: ""
    dnase_cut_counter_do_tpy: ""
    regions: ""
    reads: ""
    var_output: ""
  }
}