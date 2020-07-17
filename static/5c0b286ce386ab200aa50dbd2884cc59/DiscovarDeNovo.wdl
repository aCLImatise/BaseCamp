version 1.0

task DiscovarDeNovo {
  input {
    String arg_one
  }
  command <<<
    DiscovarDeNovo \
      ~{arg_one}
  >>>
  parameter_meta {
    arg_one: ""
  }
}