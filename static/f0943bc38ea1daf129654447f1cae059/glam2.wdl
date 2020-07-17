version 1.0

task Glam2 {
  input {
    String alphabet
    String my_seqs_dot_fa
  }
  command <<<
    glam2 \
      ~{alphabet} \
      ~{my_seqs_dot_fa}
  >>>
  parameter_meta {
    alphabet: ""
    my_seqs_dot_fa: ""
  }
}