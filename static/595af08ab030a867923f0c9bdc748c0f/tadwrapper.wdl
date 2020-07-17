version 1.0

task Tadwrapper.sh {
  input {
    String in
  }
  command <<<
    tadwrapper.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}