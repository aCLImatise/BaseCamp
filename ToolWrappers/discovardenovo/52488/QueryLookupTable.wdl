version 1.0

task QueryLookupTable {
  input {
    Int arg_one
  }
  command <<<
    QueryLookupTable \
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