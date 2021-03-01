version 1.0

task Jcmd {
  input {
    Boolean? read_execute_commands
    Boolean? list_jvm_processes
    String pid_vertical_line_main_class
    File command_dot_dot_dot_vertical_line_perf_counter_dot_print_vertical_line_f_file
  }
  command <<<
    jcmd \
      ~{pid_vertical_line_main_class} \
      ~{command_dot_dot_dot_vertical_line_perf_counter_dot_print_vertical_line_f_file} \
      ~{if (read_execute_commands) then "-f" else ""} \
      ~{if (list_jvm_processes) then "-l" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    read_execute_commands: "read and execute commands from the file"
    list_jvm_processes: "list JVM processes on the local machine"
    pid_vertical_line_main_class: ""
    command_dot_dot_dot_vertical_line_perf_counter_dot_print_vertical_line_f_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}