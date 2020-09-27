version 1.0

task JimageList {
  input {
    String j_image
    String extract_vertical_line_info_vertical_line_list_vertical_line_verify
    String options
    String j_image_dot_dot_dot
  }
  command <<<
    jimage list \
      ~{j_image} \
      ~{extract_vertical_line_info_vertical_line_list_vertical_line_verify} \
      ~{options} \
      ~{j_image_dot_dot_dot}
  >>>
  parameter_meta {
    j_image: ""
    extract_vertical_line_info_vertical_line_list_vertical_line_verify: ""
    options: ""
    j_image_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}