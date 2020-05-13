version 1.0

task BlFasta2fastq {
  input {
    Boolean iI
    Boolean qQ
    Boolean oO
    Boolean aA
    Boolean tT
  }
  command <<<
    bl-fasta2fastq \
      ~{true="-i" false="" iI} \
      ~{true="-q" false="" qQ} \
      ~{true="-o" false="" oO} \
      ~{true="-a" false="" aA} \
      ~{true="-t" false="" tT}
  >>>
}