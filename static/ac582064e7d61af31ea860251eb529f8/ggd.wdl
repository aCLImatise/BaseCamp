version 1.0

task Ggd {
  input {
    Boolean? v
  }
  command <<<
    ggd \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    v: ""
  }
}