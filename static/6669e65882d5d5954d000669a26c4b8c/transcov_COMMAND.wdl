version 1.0

task TranscovCOMMAND {
  input {
    String? args
  }
  command <<<
    transcov COMMAND \
      ~{args}
  >>>
  parameter_meta {
    args: ""
  }
}