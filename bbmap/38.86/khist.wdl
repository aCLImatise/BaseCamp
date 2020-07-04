version 1.0

task Khist.sh {
  input {
    String in
  }
  command <<<
    khist.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}