version 1.0

task AffineAlign {
  input {
    String arg_one
  }
  command <<<
    AffineAlign \
      ~{arg_one}
  >>>
  parameter_meta {
    arg_one: ""
  }
}