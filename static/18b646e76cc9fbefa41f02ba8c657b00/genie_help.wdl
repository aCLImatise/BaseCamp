version 1.0

task GenieHelp {
  input {
    String? flags
  }
  command <<<
    genie help \
      ~{flags}
  >>>
  parameter_meta {
    flags: ""
  }
}