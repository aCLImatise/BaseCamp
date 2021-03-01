version 1.0

task Syrupypy {
  input {
    Boolean? quiet
    File? replace
    Boolean? _debugleveldebugging_level
    Boolean? explain
    String? poll_pid
    String? ssh
    String? poll_top_memory
    String? poll_command
    Boolean? _intervalpolling_interval
    Boolean? syrupy_in_front
    Boolean? command_in_front
    Boolean? no_command_output
    Boolean? flush_output
    Boolean? no_raw_process_log
    Boolean? show_command
    String? separator
    Boolean? no_align
    Boolean? no_headers
    String exists
  }
  command <<<
    syrupy_py \
      ~{exists} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (replace) then "--replace" else ""} \
      ~{if (_debugleveldebugging_level) then "-v" else ""} \
      ~{if (explain) then "--explain" else ""} \
      ~{if defined(poll_pid) then ("--poll-pid " +  '"' + poll_pid + '"') else ""} \
      ~{if defined(ssh) then ("--ssh " +  '"' + ssh + '"') else ""} \
      ~{if defined(poll_top_memory) then ("--poll-top-memory " +  '"' + poll_top_memory + '"') else ""} \
      ~{if defined(poll_command) then ("--poll-command " +  '"' + poll_command + '"') else ""} \
      ~{if (_intervalpolling_interval) then "-i" else ""} \
      ~{if (syrupy_in_front) then "--syrupy-in-front" else ""} \
      ~{if (command_in_front) then "--command-in-front" else ""} \
      ~{if (no_command_output) then "--no-command-output" else ""} \
      ~{if (flush_output) then "--flush-output" else ""} \
      ~{if (no_raw_process_log) then "--no-raw-process-log" else ""} \
      ~{if (show_command) then "--show-command" else ""} \
      ~{if defined(separator) then ("--separator " +  '"' + separator + '"') else ""} \
      ~{if (no_align) then "--no-align" else ""} \
      ~{if (no_headers) then "--no-headers" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    quiet: "do not report miscellaneous run information to stderr"
    replace: "replace output file(s) without asking if already"
    _debugleveldebugging_level: "#, --debug-level=#\\ndebugging information level (0, 1, 2, 3; default=0)"
    explain: "show detailed information on the meaning of each of\\nthe columns, and then exit"
    poll_pid: "ignore COMMAND if given, and poll external process\\nwith specified PID"
    ssh: "use SSH to remote view PS with syrupy"
    poll_top_memory: "ignore COMMAND if given and poll top MEM processes by\\nmemory usage"
    poll_command: "ignore COMMAND if given, and poll external process\\nwith command matching specified regular expression\\npattern"
    _intervalpolling_interval: "#.##, --interval=#.##\\npolling interval in seconds (default=1)"
    syrupy_in_front: "redirect Syrupy output and miscellaneous information\\nto standard output and standard error instead of\\nlogging to files"
    command_in_front: "run COMMAND in foreground: send output and error\\nstream of COMMAND to standard output and standard\\nerror, respectively"
    no_command_output: "suppress all output from COMMAND"
    flush_output: "force flushing of stream buffers after every write"
    no_raw_process_log: "suppress writing of raw results from process sampling"
    show_command: "show command column in output"
    separator: "character(s) to used to separate columns in results"
    no_align: "do not align/justify columns"
    no_headers: "do not output column headers"
    exists: "-t PROCESS-TITLE, --title=PROCESS-TITLE"
  }
  output {
    File out_stdout = stdout()
    File out_replace = "${in_replace}"
  }
}