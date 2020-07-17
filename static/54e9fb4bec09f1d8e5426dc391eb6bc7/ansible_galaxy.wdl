version 1.0

task AnsibleGalaxy {
  input {
    String? in_it_vertical_line_info_vertical_line_install_vertical_line_list_vertical_line_remove
  }
  command <<<
    ansible-galaxy \
      ~{in_it_vertical_line_info_vertical_line_install_vertical_line_list_vertical_line_remove}
  >>>
  parameter_meta {
    in_it_vertical_line_info_vertical_line_install_vertical_line_list_vertical_line_remove: ""
  }
}