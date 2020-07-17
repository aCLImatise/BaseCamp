version 1.0

task TANmask {
  input {
    Boolean? v
  }
  command <<<
    TANmask \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    v: ""
  }
}