version 1.0

task DnaseCutCounterpyReads {
  input {
    Boolean? a
    String dnase_cut_counter_do_tpy
    String regions
    String reads
    String var_output
  }
  command <<<
    dnase_cut_counter_py reads \
      ~{dnase_cut_counter_do_tpy} \
      ~{regions} \
      ~{reads} \
      ~{var_output} \
      ~{if (a) then "-A" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    a: ""
    dnase_cut_counter_do_tpy: ""
    regions: ""
    reads: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}