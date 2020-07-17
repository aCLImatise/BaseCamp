version 1.0

task Mavis {
  input {
    Boolean? v
  }
  command <<<
    mavis \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    v: ""
  }
}