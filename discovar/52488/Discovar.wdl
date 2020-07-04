version 1.0

task Discovar {
  input {
    String arg_one
  }
  command <<<
    Discovar \
      ~{arg_one}
  >>>
  parameter_meta {
    arg_one: ""
  }
}