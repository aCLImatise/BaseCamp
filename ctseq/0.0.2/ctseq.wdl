version 1.0

task Ctseq {
  input {
    Boolean? v
  }
  command <<<
    ctseq \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    v: ""
  }
}