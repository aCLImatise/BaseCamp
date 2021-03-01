version 1.0

task Ansiblegalaxy {
  input {
    String? in_it_vertical_line_info_vertical_line_install_vertical_line_list_vertical_line_remove
  }
  command <<<
    ansible_galaxy \
      ~{in_it_vertical_line_info_vertical_line_install_vertical_line_list_vertical_line_remove}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in_it_vertical_line_info_vertical_line_install_vertical_line_list_vertical_line_remove: ""
  }
  output {
    File out_stdout = stdout()
  }
}