version 1.0

task Tadpipe.sh {
  input {
    String in
  }
  command <<<
    tadpipe.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}