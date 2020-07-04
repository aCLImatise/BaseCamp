version 1.0

task MakeLookupTable {
  input {
    String arg_one
  }
  command <<<
    MakeLookupTable \
      ~{arg_one}
  >>>
  parameter_meta {
    arg_one: ""
  }
}