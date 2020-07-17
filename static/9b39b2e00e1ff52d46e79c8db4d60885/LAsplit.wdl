version 1.0

task LAsplit {
  input {
    Boolean? v
  }
  command <<<
    LAsplit \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    v: ""
  }
}