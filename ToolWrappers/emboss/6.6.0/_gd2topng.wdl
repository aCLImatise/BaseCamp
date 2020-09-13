version 1.0

task Gd2topng {
  input {
    Int gd_two_to_png
    File filename_dot_gd_two
    File filename_dot_png
    String? srcx
    String? src_y
    String? width
    String? height
  }
  command <<<
    _gd2topng \
      ~{gd_two_to_png} \
      ~{filename_dot_gd_two} \
      ~{filename_dot_png} \
      ~{srcx} \
      ~{src_y} \
      ~{width} \
      ~{height}
  >>>
  parameter_meta {
    gd_two_to_png: ""
    filename_dot_gd_two: ""
    filename_dot_png: ""
    srcx: ""
    src_y: ""
    width: ""
    height: ""
  }
  output {
    File out_stdout = stdout()
  }
}