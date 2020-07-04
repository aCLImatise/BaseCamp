version 1.0

task SeqtkTrinity {
  input {
    String seq_tk
    String var_command
    String arguments
  }
  command <<<
    seqtk-trinity \
      ~{seq_tk} \
      ~{var_command} \
      ~{arguments}
  >>>
  parameter_meta {
    seq_tk: ""
    var_command: ""
    arguments: ""
  }
}