version 1.0

task CentreseqGenome {
  input {
    String centre_seq
    String var_command
    String? args
  }
  command <<<
    centreseq genome \
      ~{centre_seq} \
      ~{var_command} \
      ~{args}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    centre_seq: ""
    var_command: ""
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}