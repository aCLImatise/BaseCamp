version 1.0

task DBrm {
  input {
    Boolean? v
  }
  command <<<
    DBrm \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    v: ""
  }
}