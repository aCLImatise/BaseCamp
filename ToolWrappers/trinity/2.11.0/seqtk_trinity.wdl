version 1.0

task Seqtktrinity {
  input {
    String seq_tk
    String var_command
    String arguments
  }
  command <<<
    seqtk_trinity \
      ~{seq_tk} \
      ~{var_command} \
      ~{arguments}
  >>>
  runtime {
    docker: "quay.io/biocontainers/trinity:2.11.0--h5ef6573_1"
  }
  parameter_meta {
    seq_tk: ""
    var_command: ""
    arguments: ""
  }
  output {
    File out_stdout = stdout()
  }
}