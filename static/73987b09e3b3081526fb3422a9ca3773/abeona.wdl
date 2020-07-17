version 1.0

task Abeona {
  input {
    Boolean? v
    String args
  }
  command <<<
    abeona \
      ~{args} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    v: ""
    args: "sub-command arguments"
  }
}