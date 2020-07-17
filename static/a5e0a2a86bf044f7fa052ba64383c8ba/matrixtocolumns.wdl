version 1.0

task Matrixtocolumns.sh {
  input {
    String in_one
  }
  command <<<
    matrixtocolumns.sh \
      ~{in_one}
  >>>
  parameter_meta {
    in_one: ""
  }
}