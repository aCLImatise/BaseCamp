version 1.0

task Python.sh {
  input {
    String? option
  }
  command <<<
    python.sh \
      ~{option}
  >>>
  parameter_meta {
    option: ""
  }
}