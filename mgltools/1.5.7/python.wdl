version 1.0

task Python {
  input {
    String? option
  }
  command <<<
    python \
      ~{option}
  >>>
  parameter_meta {
    option: ""
  }
}