version 1.0

task WatchmedoLog {
  input {
    String? patterns
    String? ignore_patterns
    Boolean? ignore_directories
    Boolean? recursive
    Float? interval
    Boolean? trace
    Boolean? debug_force_polling
    Boolean? debug_force_kqueue
    Boolean? debug_force_winapi
    Boolean? debug_force_winapi_async
    Boolean? debug_force_fs_events
    Boolean? debug_force_i_notify
    String directories
  }
  command <<<
    watchmedo log \
      ~{directories} \
      ~{if defined(patterns) then ("--patterns " +  '"' + patterns + '"') else ""} \
      ~{if defined(ignore_patterns) then ("--ignore-patterns " +  '"' + ignore_patterns + '"') else ""} \
      ~{if (ignore_directories) then "--ignore-directories" else ""} \
      ~{if (recursive) then "--recursive" else ""} \
      ~{if defined(interval) then ("--interval " +  '"' + interval + '"') else ""} \
      ~{if (trace) then "--trace" else ""} \
      ~{if (debug_force_polling) then "--debug-force-polling" else ""} \
      ~{if (debug_force_kqueue) then "--debug-force-kqueue" else ""} \
      ~{if (debug_force_winapi) then "--debug-force-winapi" else ""} \
      ~{if (debug_force_winapi_async) then "--debug-force-winapi-async" else ""} \
      ~{if (debug_force_fs_events) then "--debug-force-fsevents" else ""} \
      ~{if (debug_force_i_notify) then "--debug-force-inotify" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    patterns: "matches event paths with these patterns (separated by\\n;). (default: '*')"
    ignore_patterns: "ignores event paths with these patterns (separated by\\n;). (default: '')"
    ignore_directories: "ignores events for directories (default: False)"
    recursive: "monitors the directories recursively (default: False)"
    interval: "use this as the polling interval/blocking timeout\\n(default: 1.0)"
    trace: "dumps complete dispatching trace (default: False)"
    debug_force_polling: "[debug] forces polling (default: False)"
    debug_force_kqueue: "[debug] forces BSD kqueue(2) (default: False)"
    debug_force_winapi: "[debug] forces Windows API (default: False)"
    debug_force_winapi_async: "[debug] forces Windows API + I/O completion (default:\\nFalse)"
    debug_force_fs_events: "[debug] forces Mac OS X FSEvents (default: False)"
    debug_force_i_notify: "[debug] forces Linux inotify(7) (default: False)\\n"
    directories: "directories to watch. (default: '.')"
  }
  output {
    File out_stdout = stdout()
  }
}