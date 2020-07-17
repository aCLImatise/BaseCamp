version 1.0

task Syrupy.py {
  input {
    String? poll_pid
    String? ssh
    String? poll_top_memory
    String? poll_command
    Boolean? _interval_polling
    Boolean? syrupy_in_front
    Boolean? command_in_front
    Boolean? no_command_output
    Boolean? flush_output
    Boolean? no_raw_process_log
    Boolean? show_command
    String? separator
    Boolean? no_align
    Boolean? no_headers
    String? syrupy_options
    String? var_command
    String? command_options
    String? command_args
  }
  command <<<
    syrupy.py \
      ~{syrupy_options} \
      ~{var_command} \
      ~{command_options} \
      ~{command_args} \
      ~{if defined(poll_pid) then ("--poll-pid " +  '"' + poll_pid + '"') else ""} \
      ~{if defined(ssh) then ("--ssh " +  '"' + ssh + '"') else ""} \
      ~{if defined(poll_top_memory) then ("--poll-top-memory " +  '"' + poll_top_memory + '"') else ""} \
      ~{if defined(poll_command) then ("--poll-command " +  '"' + poll_command + '"') else ""} \
      ~{true="-i" false="" _interval_polling} \
      ~{true="--syrupy-in-front" false="" syrupy_in_front} \
      ~{true="--command-in-front" false="" command_in_front} \
      ~{true="--no-command-output" false="" no_command_output} \
      ~{true="--flush-output" false="" flush_output} \
      ~{true="--no-raw-process-log" false="" no_raw_process_log} \
      ~{true="--show-command" false="" show_command} \
      ~{if defined(separator) then ("--separator " +  '"' + separator + '"') else ""} \
      ~{true="--no-align" false="" no_align} \
      ~{true="--no-headers" false="" no_headers}
  >>>
  parameter_meta {
    poll_pid: "ignore COMMAND if given, and poll external process with specified PID"
    ssh: "use SSH to remote view PS with syrupy"
    poll_top_memory: "ignore COMMAND if given and poll top MEM processes by memory usage"
    poll_command: "ignore COMMAND if given, and poll external process with command matching specified regular expression pattern"
    _interval_polling: "#.##, --interval=#.## polling interval in seconds (default=1)"
    syrupy_in_front: "redirect Syrupy output and miscellaneous information to standard output and standard error instead of logging to files"
    command_in_front: "run COMMAND in foreground: send output and error stream of COMMAND to standard output and standard error, respectively"
    no_command_output: "suppress all output from COMMAND"
    flush_output: "force flushing of stream buffers after every write"
    no_raw_process_log: "suppress writing of raw results from process sampling"
    show_command: "show command column in output"
    separator: "character(s) to used to separate columns in results"
    no_align: "do not align/justify columns"
    no_headers: "do not output column headers"
    syrupy_options: ""
    var_command: ""
    command_options: ""
    command_args: ""
  }
}