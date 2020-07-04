version 1.0

task Postfilter.sh {
  input {
    String in
  }
  command <<<
    postfilter.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}