version 1.0

task Pngtogd {
  input {
    String png_to_gd
    File filename_dot_png
    File filename_dot_gd
  }
  command <<<
    _pngtogd \
      ~{png_to_gd} \
      ~{filename_dot_png} \
      ~{filename_dot_gd}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    png_to_gd: ""
    filename_dot_png: ""
    filename_dot_gd: ""
  }
  output {
    File out_stdout = stdout()
  }
}