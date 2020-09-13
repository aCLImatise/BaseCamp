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
  parameter_meta {
    seq_tk: ""
    var_command: ""
    arguments: ""
  }
  output {
    File out_stdout = stdout()
  }
}