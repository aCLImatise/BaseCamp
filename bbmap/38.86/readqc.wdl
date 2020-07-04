version 1.0

task Readqc.sh {
  input {
    String in
  }
  command <<<
    readqc.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}