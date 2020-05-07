version 1.0

task Fasta2DAM {
  input {
    Boolean fF
    Boolean iI
  }
  command <<<
    fasta2DAM \
      ~{true="-f" false="" fF} \
      ~{true="-i" false="" iI}
  >>>
}