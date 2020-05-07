version 1.0

task Fasta2DB {
  input {
    Boolean fF
    Boolean iI
  }
  command <<<
    fasta2DB \
      ~{true="-f" false="" fF} \
      ~{true="-i" false="" iI}
  >>>
}