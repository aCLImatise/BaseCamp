version 1.0

task ByobuUgraph {
  input {
    File? file_read_points
    String? minimum_value_default
    Boolean? supress_output_newline
    String? specify_number_data
    Boolean? rotate_file_default
    String? theme_use_defaultvbars
    String? maximum_value_default
    String? var_command
    String? args_dot_dot_dot
  }
  command <<<
    byobu-ugraph \
      ~{var_command} \
      ~{args_dot_dot_dot} \
      ~{if defined(file_read_points) then ("-f " +  '"' + file_read_points + '"') else ""} \
      ~{if defined(minimum_value_default) then ("-m " +  '"' + minimum_value_default + '"') else ""} \
      ~{true="-n" false="" supress_output_newline} \
      ~{if defined(specify_number_data) then ("-p " +  '"' + specify_number_data + '"') else ""} \
      ~{true="-r" false="" rotate_file_default} \
      ~{if defined(theme_use_defaultvbars) then ("-t " +  '"' + theme_use_defaultvbars + '"') else ""} \
      ~{if defined(maximum_value_default) then ("-x " +  '"' + maximum_value_default + '"') else ""}
  >>>
  parameter_meta {
    file_read_points: ": File to read data points from. (only required if no command specified)."
    minimum_value_default: ": Minimum value (default=0)."
    supress_output_newline: ": Supress output of newline character."
    specify_number_data: ": Specify number of data points in graph (default=5)."
    rotate_file_default: ": Do not rotate file <file> (default is to rotate). Option implies file <file> should not be written to so a command cannot follow script options in this case."
    theme_use_defaultvbars: ": 'byobu-ulevel' theme to use (default=vbars_8)."
    maximum_value_default: ": Maximum value (default=100)."
    var_command: ""
    args_dot_dot_dot: ""
  }
}