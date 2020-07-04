version 1.0

task Fasta2DB {
  input {
    Boolean? v
  }
  command <<<
    fasta2DB \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    v: ""
  }
}