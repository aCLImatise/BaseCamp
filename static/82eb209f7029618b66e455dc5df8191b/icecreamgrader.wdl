version 1.0

task Icecreamgrader.sh {
  input {
    String in
  }
  command <<<
    icecreamgrader.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}