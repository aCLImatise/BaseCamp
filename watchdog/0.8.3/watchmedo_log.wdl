version 1.0

task WatchmedoLog {
  input {
    String? patterns
    String? ignore_patterns
    Boolean? ignore_directories
    Boolean? recursive
    String? interval
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
      ~{true="--ignore-directories" false="" ignore_directories} \
      ~{true="--recursive" false="" recursive} \
      ~{if defined(interval) then ("--interval " +  '"' + interval + '"') else ""} \
      ~{true="--trace" false="" trace} \
      ~{true="--debug-force-polling" false="" debug_force_polling} \
      ~{true="--debug-force-kqueue" false="" debug_force_kqueue} \
      ~{true="--debug-force-winapi" false="" debug_force_winapi} \
      ~{true="--debug-force-winapi-async" false="" debug_force_winapi_async} \
      ~{true="--debug-force-fsevents" false="" debug_force_fs_events} \
      ~{true="--debug-force-inotify" false="" debug_force_i_notify}
  >>>
  parameter_meta {
    patterns: "matches event paths with these patterns (separated by ;). (default: '*')"
    ignore_patterns: "ignores event paths with these patterns (separated by ;). (default: '')"
    ignore_directories: "ignores events for directories (default: False)"
    recursive: "monitors the directories recursively (default: False)"
    interval: "use this as the polling interval/blocking timeout (default: 1.0)"
    trace: "dumps complete dispatching trace (default: False)"
    debug_force_polling: "[debug] forces polling (default: False)"
    debug_force_kqueue: "[debug] forces BSD kqueue(2) (default: False)"
    debug_force_winapi: "[debug] forces Windows API (default: False)"
    debug_force_winapi_async: "[debug] forces Windows API + I/O completion (default: False)"
    debug_force_fs_events: "[debug] forces Mac OS X FSEvents (default: False)"
    debug_force_i_notify: "[debug] forces Linux inotify(7) (default: False)"
    directories: "directories to watch. (default: '.')"
  }
}