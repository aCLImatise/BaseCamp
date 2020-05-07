version 1.0

task HtsboxBam2fq {
  input {
    Boolean aA
    Boolean oO
    Boolean tT
    File sS
    String? bam2fqBam2fq
    String? inInBam
  }
  command <<<
    htsbox bam2fq \
      ~{bam2fqBam2fq} \
      ~{true="-a" false="" aA} \
      ~{true="-O" false="" oO} \
      ~{true="-t" false="" tT} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{inInBam}
  >>>
}