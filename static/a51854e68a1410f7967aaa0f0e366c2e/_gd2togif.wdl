version 1.0

task Gd2togif {
  input {
    Int gd_two_to_gif
    File filename_dot_gd_two
    File filename_do_tgif
  }
  command <<<
    _gd2togif \
      ~{gd_two_to_gif} \
      ~{filename_dot_gd_two} \
      ~{filename_do_tgif}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gd_two_to_gif: ""
    filename_dot_gd_two: ""
    filename_do_tgif: ""
  }
  output {
    File out_stdout = stdout()
  }
}