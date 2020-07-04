version 1.0

task EvaluateBlastResults.pl {
  input {
    Boolean? diffs_caf
    String? mini_dt
    String a_dot_pl
    String blast_dot_out
    String ras_caf_cs_dot_out
  }
  command <<<
    EvaluateBlastResults.pl \
      ~{a_dot_pl} \
      ~{blast_dot_out} \
      ~{ras_caf_cs_dot_out} \
      ~{true="-diffScaf" false="" diffs_caf} \
      ~{if defined(mini_dt) then ("-minIdt " +  '"' + mini_dt + '"') else ""}
  >>>
  parameter_meta {
    diffs_caf: ""
    mini_dt: ""
    a_dot_pl: ""
    blast_dot_out: ""
    ras_caf_cs_dot_out: ""
  }
}