version 1.0

task DASpatch {
  input {
    Boolean? v
  }
  command <<<
    DASpatch \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    v: ""
  }
}