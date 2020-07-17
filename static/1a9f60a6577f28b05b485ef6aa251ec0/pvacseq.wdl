version 1.0

task Pvacseq {
  input {
    Boolean? v
  }
  command <<<
    pvacseq \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    v: ""
  }
}