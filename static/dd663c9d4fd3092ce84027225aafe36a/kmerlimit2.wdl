version 1.0

task Kmerlimit2.sh {
  input {
    String in
  }
  command <<<
    kmerlimit2.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}