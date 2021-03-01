version 1.0

task PoreCReadsARGS {
  input {
    String pore_c
    String reads
    String var_command
    String? args
  }
  command <<<
    pore_c reads ARGS \
      ~{pore_c} \
      ~{reads} \
      ~{var_command} \
      ~{args}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pore-c:0.3.0--py_0"
  }
  parameter_meta {
    pore_c: ""
    reads: ""
    var_command: ""
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}