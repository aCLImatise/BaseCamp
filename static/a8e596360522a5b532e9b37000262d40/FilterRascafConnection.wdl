version 1.0

task FilterRascafConnection.pl {
  input {
    String evaluate_blast_dot_out
    String ras_caf_cs_dot_fa
    String ras_caf_dot_out
  }
  command <<<
    FilterRascafConnection.pl \
      ~{evaluate_blast_dot_out} \
      ~{ras_caf_cs_dot_fa} \
      ~{ras_caf_dot_out}
  >>>
  parameter_meta {
    evaluate_blast_dot_out: ""
    ras_caf_cs_dot_fa: ""
    ras_caf_dot_out: ""
  }
}