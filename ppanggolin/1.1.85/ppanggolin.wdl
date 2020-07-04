version 1.0

task Ppanggolin {
  input {
    Boolean? v
  }
  command <<<
    ppanggolin \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    v: ""
  }
}