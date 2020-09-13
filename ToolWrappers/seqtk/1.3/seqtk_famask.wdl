version 1.0

task SeqtkFamask {
  input {
    String src_dot_fa
    String mask_dot_fa
  }
  command <<<
    seqtk famask \
      ~{src_dot_fa} \
      ~{mask_dot_fa}
  >>>
  parameter_meta {
    src_dot_fa: ""
    mask_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}