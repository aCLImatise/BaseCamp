version 1.0

task Picard {
  input {
    String picard_command_line
  }
  command <<<
    picard \
      ~{picard_command_line}
  >>>
  parameter_meta {
    picard_command_line: ""
  }
}