version 1.0

task Glam2format {
  input {
    String my_format
    String my_motif_dot_glam_two
  }
  command <<<
    glam2format \
      ~{my_format} \
      ~{my_motif_dot_glam_two}
  >>>
  parameter_meta {
    my_format: ""
    my_motif_dot_glam_two: ""
  }
}