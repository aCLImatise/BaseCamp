version 1.0

task LAindex {
  input {
    Boolean? v
  }
  command <<<
    LAindex \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    v: ""
  }
}