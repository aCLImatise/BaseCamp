version 1.0

task WatchmedoLog {
  input {
    String patternsPatterns
    String ignoreIgnorePatterns
    Boolean ignoreIgnoreDirectories
    Boolean recursiveRecursive
    String intervalInterval
    Boolean traceTrace
    Boolean debugDebugForcePolling
    Boolean debugDebugForceKqueue
    Boolean debugDebugForceWinapi
    Boolean debugDebugForceWinapiAsync
    Boolean debugDebugForceFsEvents
    Boolean debugDebugForceINotify
    String? directoriesDirectories
  }
  command <<<
    watchmedo log \
      ~{directoriesDirectories} \
      ~{if defined(patternsPatterns) then ("--patterns " +  '"' + patternsPatterns + '"') else ""} \
      ~{if defined(ignoreIgnorePatterns) then ("--ignore-patterns " +  '"' + ignoreIgnorePatterns + '"') else ""} \
      ~{true="--ignore-directories" false="" ignoreIgnoreDirectories} \
      ~{true="--recursive" false="" recursiveRecursive} \
      ~{if defined(intervalInterval) then ("--interval " +  '"' + intervalInterval + '"') else ""} \
      ~{true="--trace" false="" traceTrace} \
      ~{true="--debug-force-polling" false="" debugDebugForcePolling} \
      ~{true="--debug-force-kqueue" false="" debugDebugForceKqueue} \
      ~{true="--debug-force-winapi" false="" debugDebugForceWinapi} \
      ~{true="--debug-force-winapi-async" false="" debugDebugForceWinapiAsync} \
      ~{true="--debug-force-fsevents" false="" debugDebugForceFsEvents} \
      ~{true="--debug-force-inotify" false="" debugDebugForceINotify}
  >>>
}