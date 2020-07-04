version 1.0

task _pngtogd2 {
  input {
    String png_to_gd_two
    File filename_dot_png
    File filename_dot_gd_two
    String cs
    String fmt
  }
  command <<<
    _pngtogd2 \
      ~{png_to_gd_two} \
      ~{filename_dot_png} \
      ~{filename_dot_gd_two} \
      ~{cs} \
      ~{fmt}
  >>>
  parameter_meta {
    png_to_gd_two: ""
    filename_dot_png: ""
    filename_dot_gd_two: ""
    cs: ""
    fmt: ""
  }
}