version 1.0

task SidrContigs {
  input {
    String sid_r
    String var_command
    String? args
  }
  command <<<
    sidr contigs_ \
      ~{sid_r} \
      ~{var_command} \
      ~{args}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sidr:0.0.2a2--pyh3252c3a_0"
  }
  parameter_meta {
    sid_r: ""
    var_command: ""
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}