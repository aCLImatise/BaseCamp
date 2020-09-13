version 1.0

task Gdtopng {
  input {
    String gd_to_png
    File filename_dot_gd
    File filename_dot_png
  }
  command <<<
    _gdtopng \
      ~{gd_to_png} \
      ~{filename_dot_gd} \
      ~{filename_dot_png}
  >>>
  parameter_meta {
    gd_to_png: ""
    filename_dot_gd: ""
    filename_dot_png: ""
  }
  output {
    File out_stdout = stdout()
  }
}