version 1.0

task Glam2scan {
  input {
    String alphabet
    String my_motif_dot_glam_two
    String my_seqs_dot_fa
  }
  command <<<
    glam2scan \
      ~{alphabet} \
      ~{my_motif_dot_glam_two} \
      ~{my_seqs_dot_fa}
  >>>
  parameter_meta {
    alphabet: ""
    my_motif_dot_glam_two: ""
    my_seqs_dot_fa: ""
  }
}