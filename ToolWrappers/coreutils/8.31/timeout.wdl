version 1.0

task Timeout {
  input {
    Boolean? preserve_status
    Boolean? foreground
    String? kill_after
    Int? signal
    Boolean? verbose
    String duration
    String var_command
    String? arg
  }
  command <<<
    timeout \
      ~{duration} \
      ~{var_command} \
      ~{arg} \
      ~{if (preserve_status) then "--preserve-status" else ""} \
      ~{if (foreground) then "--foreground" else ""} \
      ~{if defined(kill_after) then ("--kill-after " +  '"' + kill_after + '"') else ""} \
      ~{if defined(signal) then ("--signal " +  '"' + signal + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    preserve_status: "exit with the same status as COMMAND, even when the\\ncommand times out"
    foreground: "when not running timeout directly from a shell prompt,\\nallow COMMAND to read from the TTY and get TTY signals;\\nin this mode, children of COMMAND will not be timed out"
    kill_after: "also send a KILL signal if COMMAND is still running\\nthis long after the initial signal was sent"
    signal: "specify the signal to be sent on timeout;\\nSIGNAL may be a name like 'HUP' or a number;\\nsee 'kill -l' for a list of signals"
    verbose: "diagnose to stderr any signal sent upon timeout"
    duration: ""
    var_command: ""
    arg: ""
  }
  output {
    File out_stdout = stdout()
  }
}