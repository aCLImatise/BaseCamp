version 1.0

task PrepareDiscovarGenome {
  input {
    String arg_one
  }
  command <<<
    PrepareDiscovarGenome \
      ~{arg_one}
  >>>
  parameter_meta {
    arg_one: ""
  }
}