version 1.0

task MakeLookupTable {
  input {
    Int arg_one
  }
  command <<<
    MakeLookupTable \
      ~{arg_one}
  >>>
  parameter_meta {
    arg_one: ""
  }
  output {
    File out_stdout = stdout()
  }
}