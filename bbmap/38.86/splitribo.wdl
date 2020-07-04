version 1.0

task Splitribo.sh {
  input {
    String in
  }
  command <<<
    splitribo.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}