version 1.0

task Groups {
  input {
    String? option
  }
  command <<<
    groups \
      ~{option}
  >>>
  parameter_meta {
    option: ""
  }
}