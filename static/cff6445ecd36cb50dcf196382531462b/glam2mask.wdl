version 1.0

task Glam2mask {
  input {
    String my_motif_dot_glam_two
    String my_seqs_dot_fa
  }
  command <<<
    glam2mask \
      ~{my_motif_dot_glam_two} \
      ~{my_seqs_dot_fa}
  >>>
  parameter_meta {
    my_motif_dot_glam_two: ""
    my_seqs_dot_fa: ""
  }
}