version 1.0

task Kmercountmulti.sh {
  input {
    String in
  }
  command <<<
    kmercountmulti.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}