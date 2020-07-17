version 1.0

task Comparegff.sh {
  input {
    String in
  }
  command <<<
    comparegff.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}