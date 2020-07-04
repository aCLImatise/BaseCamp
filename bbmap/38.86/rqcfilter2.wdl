version 1.0

task Rqcfilter2.sh {
  input {
    String in
  }
  command <<<
    rqcfilter2.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}