version 1.0

task WatchmedoShellCommand {
  input {
    String? shell_command_executed
    String? patterns
    String? ignore_patterns
    Boolean? ignore_directories
    Boolean? recursive
    String? interval
    Boolean? wait
    Boolean? drop
    String directories
  }
  command <<<
    watchmedo shell-command \
      ~{directories} \
      ~{if defined(shell_command_executed) then ("--command " +  '"' + shell_command_executed + '"') else ""} \
      ~{if defined(patterns) then ("--patterns " +  '"' + patterns + '"') else ""} \
      ~{if defined(ignore_patterns) then ("--ignore-patterns " +  '"' + ignore_patterns + '"') else ""} \
      ~{true="--ignore-directories" false="" ignore_directories} \
      ~{true="--recursive" false="" recursive} \
      ~{if defined(interval) then ("--interval " +  '"' + interval + '"') else ""} \
      ~{true="--wait" false="" wait} \
      ~{true="--drop" false="" drop}
  >>>
  parameter_meta {
    shell_command_executed: "shell command executed in response to matching events. These interpolation variables are available to your command string:: ${watch_src_path} - event source path; ${watch_dest_path} - event destination path (for moved events); ${watch_event_type} - event type; ${watch_object} - ``file`` or ``directory`` Note:: Please ensure you do not use double quotes (\") to quote your command string. That will force your shell to interpolate before the command is processed by this subcommand. Example option usage:: --command='echo \"${watch_src_path}\"' (default: -)"
    patterns: "matches event paths with these patterns (separated by ;). (default: '*')"
    ignore_patterns: "ignores event paths with these patterns (separated by ;). (default: '')"
    ignore_directories: "ignores events for directories (default: False)"
    recursive: "monitors the directories recursively (default: False)"
    interval: "use this as the polling interval/blocking timeout (default: 1.0)"
    wait: "wait for process to finish to avoid multiple simultaneous instances (default: False)"
    drop: "Ignore events that occur while command is still being executed to avoid multiple simultaneous instances (default: False)"
    directories: "directories to watch (default: '.')"
  }
}