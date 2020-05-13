version 1.0

task SketchyOnlineWatch {
  input {
    File directoryDirectory
    String regexRegex
    Boolean nowNow
  }
  command <<<
    sketchy online watch \
      ~{if defined(directoryDirectory) then ("--directory " +  '"' + directoryDirectory + '"') else ""} \
      ~{if defined(regexRegex) then ("--regex " +  '"' + regexRegex + '"') else ""} \
      ~{true="--now" false="" nowNow}
  >>>
}