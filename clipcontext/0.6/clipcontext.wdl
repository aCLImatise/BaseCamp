version 1.0

task Clipcontext {
  input {
    Boolean? v
  }
  command <<<
    clipcontext \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    v: ""
  }
}