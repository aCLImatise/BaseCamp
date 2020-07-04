version 1.0

task Callvariants.sh {
  input {
    String in
  }
  command <<<
    callvariants.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}