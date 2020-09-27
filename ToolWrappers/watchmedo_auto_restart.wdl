version 1.0

task WatchmedoAutorestart {
  input {
    Directory? directory
    String? patterns
    String? ignore_patterns
    Boolean? ignore_directories
    Boolean? recursive
    Float? interval
    String? signal
    Float? kill_after
    String longrunning_command_run
    String arg
  }
  command <<<
    watchmedo auto_restart \
      ~{longrunning_command_run} \
      ~{arg} \
      ~{if defined(directory) then ("--directory " +  '"' + directory + '"') else ""} \
      ~{if defined(patterns) then ("--patterns " +  '"' + patterns + '"') else ""} \
      ~{if defined(ignore_patterns) then ("--ignore-patterns " +  '"' + ignore_patterns + '"') else ""} \
      ~{if (ignore_directories) then "--ignore-directories" else ""} \
      ~{if (recursive) then "--recursive" else ""} \
      ~{if defined(interval) then ("--interval " +  '"' + interval + '"') else ""} \
      ~{if defined(signal) then ("--signal " +  '"' + signal + '"') else ""} \
      ~{if defined(kill_after) then ("--kill-after " +  '"' + kill_after + '"') else ""}
  >>>
  parameter_meta {
    directory: "Directory to watch. Use another -d or --directory\\noption for each directory. (default: -)"
    patterns: "matches event paths with these patterns (separated by\\n;). (default: '*')"
    ignore_patterns: "ignores event paths with these patterns (separated by\\n;). (default: '')"
    ignore_directories: "ignores events for directories (default: False)"
    recursive: "monitors the directories recursively (default: False)"
    interval: "use this as the polling interval/blocking timeout\\n(default: 1.0)"
    signal: "stop the subprocess with this signal (default SIGINT)\\n(default: 'SIGINT')"
    kill_after: "when stopping, kill the subprocess after the specified\\ntimeout (default 10) (default: 10.0)\\n"
    longrunning_command_run: "Long-running command to run in a subprocess."
    arg: "Command arguments. Note: Use -- before the command\\narguments, otherwise watchmedo will try to interpret\\nthem. (default: -)"
  }
  output {
    File out_stdout = stdout()
  }
}