version 1.0

task Datander {
  input {
    Boolean? v
  }
  command <<<
    datander \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    v: ""
  }
}