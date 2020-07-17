version 1.0

task DASrealign {
  input {
    Boolean? v
  }
  command <<<
    DASrealign \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    v: ""
  }
}