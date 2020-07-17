version 1.0

task _gd2togif {
  input {
    String gd_two_to_gif
    File filename_dot_gd_two
    File filename_do_tgif
  }
  command <<<
    _gd2togif \
      ~{gd_two_to_gif} \
      ~{filename_dot_gd_two} \
      ~{filename_do_tgif}
  >>>
  parameter_meta {
    gd_two_to_gif: ""
    filename_dot_gd_two: ""
    filename_do_tgif: ""
  }
}