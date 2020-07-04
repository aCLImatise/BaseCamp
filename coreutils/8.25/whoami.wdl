version 1.0

task Whoami {
  input {
    String? option
  }
  command <<<
    whoami \
      ~{option}
  >>>
  parameter_meta {
    option: ""
  }
}