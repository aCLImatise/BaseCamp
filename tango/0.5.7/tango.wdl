version 1.0

task Tango {
  input {
    Boolean? v
  }
  command <<<
    tango \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    v: ""
  }
}