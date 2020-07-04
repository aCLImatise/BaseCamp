version 1.0

task Nanoraw {
  input {
    Boolean? v
  }
  command <<<
    nanoraw \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    v: ""
  }
}