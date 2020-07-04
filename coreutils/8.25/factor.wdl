version 1.0

task Factor {
  input {
    String? number
  }
  command <<<
    factor \
      ~{number}
  >>>
  parameter_meta {
    number: ""
  }
}