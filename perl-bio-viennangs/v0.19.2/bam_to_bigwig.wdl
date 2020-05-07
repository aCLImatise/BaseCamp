version 1.0

task BamToBigwig.pl {
  input {
    Boolean bamBam
    Boolean csCs
    Boolean strandStrand
    Boolean oO
    Boolean logLog
    Boolean manMan
  }
  command <<<
    bam_to_bigwig.pl \
      ~{true="--bam" false="" bamBam} \
      ~{true="--cs" false="" csCs} \
      ~{true="--strand" false="" strandStrand} \
      ~{true="-o" false="" oO} \
      ~{true="--log" false="" logLog} \
      ~{true="--man" false="" manMan}
  >>>
}