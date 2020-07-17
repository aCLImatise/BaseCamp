version 1.0

task Python2.7 {
  input {
    String? option
  }
  command <<<
    python2.7 \
      ~{option}
  >>>
  parameter_meta {
    option: ""
  }
}