version 1.0

task Biasaway {
  input {
    Boolean? v
  }
  command <<<
    biasaway \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    v: ""
  }
}