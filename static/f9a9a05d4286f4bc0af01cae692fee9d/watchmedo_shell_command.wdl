version 1.0

task WatchmedoShellcommand {
  input {
    File? shell_command_executed
    String? patterns
    String? ignore_patterns
    Boolean? ignore_directories
    Boolean? recursive
    Float? interval
    Boolean? wait
    Boolean? drop
    String directories
  }
  command <<<
    watchmedo shell_command \
      ~{directories} \
      ~{if defined(shell_command_executed) then ("--command " +  '"' + shell_command_executed + '"') else ""} \
      ~{if defined(patterns) then ("--patterns " +  '"' + patterns + '"') else ""} \
      ~{if defined(ignore_patterns) then ("--ignore-patterns " +  '"' + ignore_patterns + '"') else ""} \
      ~{if (ignore_directories) then "--ignore-directories" else ""} \
      ~{if (recursive) then "--recursive" else ""} \
      ~{if defined(interval) then ("--interval " +  '"' + interval + '"') else ""} \
      ~{if (wait) then "--wait" else ""} \
      ~{if (drop) then "--drop" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    shell_command_executed: "shell command executed in response to matching events.\\nThese interpolation variables are available to your\\ncommand string:: ${watch_src_path} - event source\\npath; ${watch_dest_path} - event destination path (for\\nmoved events); ${watch_event_type} - event type;\\n${watch_object} - ``file`` or ``directory`` Note::\\nPlease ensure you do not use double quotes (\\\") to\\nquote your command string. That will force your shell\\nto interpolate before the command is processed by this\\nsubcommand. Example option usage:: --command='echo\\n\\\"${watch_src_path}\\\"' (default: -)"
    patterns: "matches event paths with these patterns (separated by\\n;). (default: '*')"
    ignore_patterns: "ignores event paths with these patterns (separated by\\n;). (default: '')"
    ignore_directories: "ignores events for directories (default: False)"
    recursive: "monitors the directories recursively (default: False)"
    interval: "use this as the polling interval/blocking timeout\\n(default: 1.0)"
    wait: "wait for process to finish to avoid multiple\\nsimultaneous instances (default: False)"
    drop: "Ignore events that occur while command is still being\\nexecuted to avoid multiple simultaneous instances\\n(default: False)\\n"
    directories: "directories to watch (default: '.')"
  }
  output {
    File out_stdout = stdout()
  }
}