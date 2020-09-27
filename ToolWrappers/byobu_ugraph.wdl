version 1.0

task Byobuugraph {
  input {
    File? file_read_points
    Int? minimum_value_default
    Boolean? supress_output_newline
    Int? specify_number_data
    Boolean? rotate_file_default
    Int? theme_use_defaultvbars
    Int? maximum_value_default
    String by_obu_u_level_dot
  }
  command <<<
    byobu_ugraph \
      ~{by_obu_u_level_dot} \
      ~{if defined(file_read_points) then ("-f " +  '"' + file_read_points + '"') else ""} \
      ~{if defined(minimum_value_default) then ("-m " +  '"' + minimum_value_default + '"') else ""} \
      ~{if (supress_output_newline) then "-n" else ""} \
      ~{if defined(specify_number_data) then ("-p " +  '"' + specify_number_data + '"') else ""} \
      ~{if (rotate_file_default) then "-r" else ""} \
      ~{if defined(theme_use_defaultvbars) then ("-t " +  '"' + theme_use_defaultvbars + '"') else ""} \
      ~{if defined(maximum_value_default) then ("-x " +  '"' + maximum_value_default + '"') else ""}
  >>>
  parameter_meta {
    file_read_points: ": File to read data points from.\\n(only required if no command specified)."
    minimum_value_default: ": Minimum value (default=0)."
    supress_output_newline: ": Supress output of newline character."
    specify_number_data: ": Specify number of data points in graph\\n(default=5)."
    rotate_file_default: ": Do not rotate file <file> (default is to rotate).\\nOption implies file <file> should not be written to\\nso a command cannot follow script options in this case."
    theme_use_defaultvbars: ": 'byobu-ulevel' theme to use (default=vbars_8)."
    maximum_value_default: ": Maximum value (default=100)."
    by_obu_u_level_dot: "Usage: byobu-ugraph [options] [command [args...]]"
  }
  output {
    File out_stdout = stdout()
  }
}