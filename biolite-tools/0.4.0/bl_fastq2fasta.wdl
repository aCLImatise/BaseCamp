version 1.0

task BlFastq2fasta {
  input {
    Boolean iI
    Boolean oO
    Boolean qQ
    Boolean aA
    Boolean tT
    Boolean sS
  }
  command <<<
    bl-fastq2fasta \
      ~{true="-i" false="" iI} \
      ~{true="-o" false="" oO} \
      ~{true="-q" false="" qQ} \
      ~{true="-a" false="" aA} \
      ~{true="-t" false="" tT} \
      ~{true="-s" false="" sS}
  >>>
}