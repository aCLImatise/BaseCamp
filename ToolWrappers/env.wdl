version 1.0

task Env {
  input {
    Boolean? ignore_environment
    Boolean? null
    String? unset
    Directory? chdir
    String? split_string
    Boolean? block_signal
    Boolean? default_signal
    Boolean? ignore_signal
    Boolean? list_signal_handling
    Boolean? debug
  }
  command <<<
    env \
      ~{if (ignore_environment) then "--ignore-environment" else ""} \
      ~{if (null) then "--null" else ""} \
      ~{if defined(unset) then ("--unset " +  '"' + unset + '"') else ""} \
      ~{if defined(chdir) then ("--chdir " +  '"' + chdir + '"') else ""} \
      ~{if defined(split_string) then ("--split-string " +  '"' + split_string + '"') else ""} \
      ~{if (block_signal) then "--block-signal" else ""} \
      ~{if (default_signal) then "--default-signal" else ""} \
      ~{if (ignore_signal) then "--ignore-signal" else ""} \
      ~{if (list_signal_handling) then "--list-signal-handling" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    ignore_environment: "start with an empty environment"
    null: "end each output line with NUL, not newline"
    unset: "remove variable from the environment"
    chdir: "change working directory to DIR"
    split_string: "process and split S into separate arguments;\\nused to pass multiple arguments on shebang lines"
    block_signal: "[=SIG]    block delivery of SIG signal(s) to COMMAND"
    default_signal: "[=SIG]  reset handling of SIG signal(s) to the default"
    ignore_signal: "[=SIG]   set handling of SIG signals(s) to do nothing"
    list_signal_handling: "list non default signal handling to stderr"
    debug: "print verbose information for each processing step"
  }
  output {
    File out_stdout = stdout()
  }
}