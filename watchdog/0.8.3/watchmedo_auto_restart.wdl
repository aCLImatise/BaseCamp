version 1.0

task WatchmedoAutoRestart {
  input {
    Directory directoryDirectory
    String patternsPatterns
    String ignoreIgnorePatterns
    Boolean ignoreIgnoreDirectories
    Boolean recursiveRecursive
    String intervalInterval
    String signalSignal
    String killKillAfter
    String? commandCommand
    String? argArg
  }
  command <<<
    watchmedo auto-restart \
      ~{commandCommand} \
      ~{if defined(directoryDirectory) then ("--directory " +  '"' + directoryDirectory + '"') else ""} \
      ~{if defined(patternsPatterns) then ("--patterns " +  '"' + patternsPatterns + '"') else ""} \
      ~{if defined(ignoreIgnorePatterns) then ("--ignore-patterns " +  '"' + ignoreIgnorePatterns + '"') else ""} \
      ~{true="--ignore-directories" false="" ignoreIgnoreDirectories} \
      ~{true="--recursive" false="" recursiveRecursive} \
      ~{if defined(intervalInterval) then ("--interval " +  '"' + intervalInterval + '"') else ""} \
      ~{if defined(signalSignal) then ("--signal " +  '"' + signalSignal + '"') else ""} \
      ~{if defined(killKillAfter) then ("--kill-after " +  '"' + killKillAfter + '"') else ""} \
      ~{argArg}
  >>>
}