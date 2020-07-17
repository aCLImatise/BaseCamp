version 1.0

task Sldout {
  input {
    String? csv_vertical_line_txt
    File filename_dots_ld
  }
  command <<<
    sldout \
      ~{csv_vertical_line_txt} \
      ~{filename_dots_ld}
  >>>
  parameter_meta {
    csv_vertical_line_txt: ""
    filename_dots_ld: ""
  }
}