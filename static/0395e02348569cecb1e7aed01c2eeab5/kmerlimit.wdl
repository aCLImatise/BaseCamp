version 1.0

task Kmerlimit.sh {
  input {
    String in
  }
  command <<<
    kmerlimit.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}