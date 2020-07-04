version 1.0

task SeqtkRename {
  input {
    String in_dot_fq
    String? prefix
  }
  command <<<
    seqtk rename \
      ~{in_dot_fq} \
      ~{prefix}
  >>>
  parameter_meta {
    in_dot_fq: ""
    prefix: ""
  }
}