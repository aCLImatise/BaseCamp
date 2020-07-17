version 1.0

task Fasta2DAM {
  input {
    Boolean? v
  }
  command <<<
    fasta2DAM \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    v: ""
  }
}