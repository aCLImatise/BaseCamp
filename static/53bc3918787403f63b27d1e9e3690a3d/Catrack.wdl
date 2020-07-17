version 1.0

task Catrack {
  input {
    Boolean? v
  }
  command <<<
    Catrack \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    v: ""
  }
}