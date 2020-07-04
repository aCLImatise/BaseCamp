version 1.0

task Logname {
  input {
    String? option
  }
  command <<<
    logname \
      ~{option}
  >>>
  parameter_meta {
    option: ""
  }
}