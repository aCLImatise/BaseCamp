version 1.0

task WatchmedoShellCommand {
  input {
    String commandCommand
    String patternsPatterns
    String ignoreIgnorePatterns
    Boolean ignoreIgnoreDirectories
    Boolean recursiveRecursive
    String intervalInterval
    Boolean waitWait
    Boolean dropDrop
    String? directoriesDirectories
  }
  command <<<
    watchmedo shell-command \
      ~{directoriesDirectories} \
      ~{if defined(commandCommand) then ("--command " +  '"' + commandCommand + '"') else ""} \
      ~{if defined(patternsPatterns) then ("--patterns " +  '"' + patternsPatterns + '"') else ""} \
      ~{if defined(ignoreIgnorePatterns) then ("--ignore-patterns " +  '"' + ignoreIgnorePatterns + '"') else ""} \
      ~{true="--ignore-directories" false="" ignoreIgnoreDirectories} \
      ~{true="--recursive" false="" recursiveRecursive} \
      ~{if defined(intervalInterval) then ("--interval " +  '"' + intervalInterval + '"') else ""} \
      ~{true="--wait" false="" waitWait} \
      ~{true="--drop" false="" dropDrop}
  >>>
}