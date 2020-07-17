version 1.0

task Refgenieserver {
  input {
    Boolean? v
  }
  command <<<
    refgenieserver \
      ~{true="-V" false="" v}
  >>>
  parameter_meta {
    v: ""
  }
}