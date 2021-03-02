version 1.0

task HPCREPmask {
  input {
    Boolean? int_cint_readsdbdam
    Boolean? t
    Boolean? vbd
    Int? var_int
  }
  command <<<
    HPC_REPmask \
      ~{var_int} \
      ~{if (int_cint_readsdbdam) then "-g" else ""} \
      ~{if (t) then "-t" else ""} \
      ~{if (vbd) then "-vbd" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    int_cint_readsdbdam: "<int> -c<int> <reads:db|dam> [<block:int>[-<range:int>]"
    t: ""
    vbd: ""
    var_int: ""
  }
  output {
    File out_stdout = stdout()
  }
}