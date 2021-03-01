version 1.0

task DiscovarDeNovo {
  input {
    Int arg_one
  }
  command <<<
    DiscovarDeNovo \
      ~{arg_one}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    arg_one: ""
  }
  output {
    File out_stdout = stdout()
  }
}