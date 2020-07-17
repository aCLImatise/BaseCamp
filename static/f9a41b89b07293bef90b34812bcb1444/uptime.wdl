version 1.0

task Uptime {
  input {
    String? option
  }
  command <<<
    uptime \
      ~{option}
  >>>
  parameter_meta {
    option: ""
  }
}