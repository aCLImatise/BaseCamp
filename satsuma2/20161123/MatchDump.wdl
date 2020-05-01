version 1.0

task MatchDump {
  input {
    String? kKMatchOutputFile
  }
  command <<<
    MatchDump \
      ~{kKMatchOutputFile}
  >>>
}