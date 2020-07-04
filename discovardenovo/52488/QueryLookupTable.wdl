version 1.0

task QueryLookupTable {
  input {
    String arg_one
  }
  command <<<
    QueryLookupTable \
      ~{arg_one}
  >>>
  parameter_meta {
    arg_one: ""
  }
}