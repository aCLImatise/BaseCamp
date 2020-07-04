version 1.0

task Hidehead {
  input {
    String? option
  }
  command <<<
    hidehead \
      ~{option}
  >>>
  parameter_meta {
    option: ""
  }
}