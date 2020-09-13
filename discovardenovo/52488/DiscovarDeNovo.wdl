version 1.0

task DiscovarDeNovo {
  input {
    Int arg_one
  }
  command <<<
    DiscovarDeNovo \
      ~{arg_one}
  >>>
  parameter_meta {
    arg_one: ""
  }
  output {
    File out_stdout = stdout()
  }
}