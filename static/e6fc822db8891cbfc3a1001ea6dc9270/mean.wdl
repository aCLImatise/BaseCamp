version 1.0

task Mean {
  input {
    String? option
  }
  command <<<
    mean \
      ~{option}
  >>>
  parameter_meta {
    option: ""
  }
}