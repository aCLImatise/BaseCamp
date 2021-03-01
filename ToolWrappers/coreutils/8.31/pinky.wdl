version 1.0

task Pinky {
  input {
    Boolean? produce_format_output
    Boolean? omit_users_directory
    Boolean? omit_users_plan
    Boolean? do_format_output
    Boolean? omit_line_column
    Boolean? omit_users_full_name_short
    Boolean? omit_users_full_name_host
    Boolean? omit_users_host
  }
  command <<<
    pinky \
      ~{if (produce_format_output) then "-l" else ""} \
      ~{if (omit_users_directory) then "-b" else ""} \
      ~{if (omit_users_plan) then "-p" else ""} \
      ~{if (do_format_output) then "-s" else ""} \
      ~{if (omit_line_column) then "-f" else ""} \
      ~{if (omit_users_full_name_short) then "-w" else ""} \
      ~{if (omit_users_full_name_host) then "-i" else ""} \
      ~{if (omit_users_host) then "-q" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    produce_format_output: "produce long format output for the specified USERs"
    omit_users_directory: "omit the user's home directory and shell in long format"
    omit_users_plan: "omit the user's plan file in long format"
    do_format_output: "do short format output, this is the default"
    omit_line_column: "omit the line of column headings in short format"
    omit_users_full_name_short: "omit the user's full name in short format"
    omit_users_full_name_host: "omit the user's full name and remote host in short format"
    omit_users_host: "omit the user's full name, remote host and idle time\\nin short format"
  }
  output {
    File out_stdout = stdout()
  }
}