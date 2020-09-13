version 1.0

task AffineAlign {
  input {
    Int arg_one
  }
  command <<<
    AffineAlign \
      ~{arg_one}
  >>>
  parameter_meta {
    arg_one: ""
  }
  output {
    File out_stdout = stdout()
  }
}