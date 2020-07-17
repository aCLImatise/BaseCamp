version 1.0

task RgtTDF {
  input {
    Boolean? v
  }
  command <<<
    rgt-TDF \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    v: ""
  }
}