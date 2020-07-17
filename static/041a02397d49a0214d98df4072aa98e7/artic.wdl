version 1.0

task Artic {
  input {
    Boolean? v
  }
  command <<<
    artic \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    v: ""
  }
}