version 1.0

task Splitnextera.sh {
  input {
    String in
  }
  command <<<
    splitnextera.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}