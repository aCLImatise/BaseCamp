version 1.0

task Contigtax {
  input {
    Boolean? v
  }
  command <<<
    contigtax \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    v: ""
  }
}