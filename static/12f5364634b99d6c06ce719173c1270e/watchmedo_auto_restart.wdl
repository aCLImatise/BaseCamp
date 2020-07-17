version 1.0

task WatchmedoAutoRestart {
  input {
    Directory? directory
    String? patterns
    String? ignore_patterns
    Boolean? ignore_directories
    Boolean? recursive
    String? interval
    String? signal
    String? kill_after
    String longrunning_command_run
    String arg
  }
  command <<<
    watchmedo auto-restart \
      ~{longrunning_command_run} \
      ~{arg} \
      ~{if defined(directory) then ("--directory " +  '"' + directory + '"') else ""} \
      ~{if defined(patterns) then ("--patterns " +  '"' + patterns + '"') else ""} \
      ~{if defined(ignore_patterns) then ("--ignore-patterns " +  '"' + ignore_patterns + '"') else ""} \
      ~{true="--ignore-directories" false="" ignore_directories} \
      ~{true="--recursive" false="" recursive} \
      ~{if defined(interval) then ("--interval " +  '"' + interval + '"') else ""} \
      ~{if defined(signal) then ("--signal " +  '"' + signal + '"') else ""} \
      ~{if defined(kill_after) then ("--kill-after " +  '"' + kill_after + '"') else ""}
  >>>
  parameter_meta {
    directory: "Directory to watch. Use another -d or --directory option for each directory. (default: -)"
    patterns: "matches event paths with these patterns (separated by ;). (default: '*')"
    ignore_patterns: "ignores event paths with these patterns (separated by ;). (default: '')"
    ignore_directories: "ignores events for directories (default: False)"
    recursive: "monitors the directories recursively (default: False)"
    interval: "use this as the polling interval/blocking timeout (default: 1.0)"
    signal: "stop the subprocess with this signal (default SIGINT) (default: 'SIGINT')"
    kill_after: "when stopping, kill the subprocess after the specified timeout (default 10) (default: 10.0)"
    longrunning_command_run: "Long-running command to run in a subprocess."
    arg: "Command arguments. Note: Use -- before the command arguments, otherwise watchmedo will try to interpret them. (default: -)"
  }
}