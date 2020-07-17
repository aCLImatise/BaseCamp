version 1.0

task Callgenes.sh {
  input {
    String in
  }
  command <<<
    callgenes.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}