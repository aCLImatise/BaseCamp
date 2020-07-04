version 1.0

task Pinky {
  input {
    String? long_format_output
    String? users_home_directory
    String? users_project_file
    String? users_plan_file
    String? short_format_output
    String? line_column_headings
    String? users_full_name_short
    String? users_full_name_host
    String? users_full_name_remote
    String? option
  }
  command <<<
    pinky \
      ~{option} \
      ~{if defined(long_format_output) then ("-l " +  '"' + long_format_output + '"') else ""} \
      ~{if defined(users_home_directory) then ("-b " +  '"' + users_home_directory + '"') else ""} \
      ~{if defined(users_project_file) then ("-h " +  '"' + users_project_file + '"') else ""} \
      ~{if defined(users_plan_file) then ("-p " +  '"' + users_plan_file + '"') else ""} \
      ~{if defined(short_format_output) then ("-s " +  '"' + short_format_output + '"') else ""} \
      ~{if defined(line_column_headings) then ("-f " +  '"' + line_column_headings + '"') else ""} \
      ~{if defined(users_full_name_short) then ("-w " +  '"' + users_full_name_short + '"') else ""} \
      ~{if defined(users_full_name_host) then ("-i " +  '"' + users_full_name_host + '"') else ""} \
      ~{if defined(users_full_name_remote) then ("-q " +  '"' + users_full_name_remote + '"') else ""}
  >>>
  parameter_meta {
    long_format_output: "long format output for the specified USERs"
    users_home_directory: "the user's home directory and shell in long format"
    users_project_file: "the user's project file in long format"
    users_plan_file: "the user's plan file in long format"
    short_format_output: "short format output, this is the default"
    line_column_headings: "the line of column headings in short format"
    users_full_name_short: "the user's full name in short format"
    users_full_name_host: "the user's full name and remote host in short format"
    users_full_name_remote: "the user's full name, remote host and idle time in short format"
    option: ""
  }
}