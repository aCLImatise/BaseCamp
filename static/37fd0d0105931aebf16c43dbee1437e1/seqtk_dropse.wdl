version 1.0

task SeqtkDropse {
  input {
    String in_dot_fq
  }
  command <<<
    seqtk dropse \
      ~{in_dot_fq}
  >>>
  parameter_meta {
    in_dot_fq: ""
  }
}