version 1.0

task Tombo {
  input {
    Boolean? v
  }
  command <<<
    tombo \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    v: ""
  }
}