version 1.0

task Timeout {
  input {
    Boolean? preserve_status
    Boolean? foreground
    String? kill_after
    String? signal
    String? option
    String duration
    String var_command
    String? arg
  }
  command <<<
    timeout \
      ~{option} \
      ~{duration} \
      ~{var_command} \
      ~{arg} \
      ~{true="--preserve-status" false="" preserve_status} \
      ~{true="--foreground" false="" foreground} \
      ~{if defined(kill_after) then ("--kill-after " +  '"' + kill_after + '"') else ""} \
      ~{if defined(signal) then ("--signal " +  '"' + signal + '"') else ""}
  >>>
  parameter_meta {
    preserve_status: "exit with the same status as COMMAND, even when the command times out"
    foreground: "when not running timeout directly from a shell prompt, allow COMMAND to read from the TTY and get TTY signals; in this mode, children of COMMAND will not be timed out"
    kill_after: "also send a KILL signal if COMMAND is still running this long after the initial signal was sent"
    signal: "specify the signal to be sent on timeout; SIGNAL may be a name like 'HUP' or a number; see 'kill -l' for a list of signals"
    option: ""
    duration: ""
    var_command: ""
    arg: ""
  }
}