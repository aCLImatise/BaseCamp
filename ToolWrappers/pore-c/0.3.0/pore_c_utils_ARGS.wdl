version 1.0

task PoreCUtilsARGS {
  input {
    String pore_c
    String utils
    String var_command
    String? args
  }
  command <<<
    pore_c utils ARGS \
      ~{pore_c} \
      ~{utils} \
      ~{var_command} \
      ~{args}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pore-c:0.3.0--py_0"
  }
  parameter_meta {
    pore_c: ""
    utils: ""
    var_command: ""
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}