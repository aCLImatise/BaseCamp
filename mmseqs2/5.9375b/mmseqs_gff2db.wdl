version 1.0

task MmseqsGff2db {
  input {
    Boolean gffGffType
    Boolean idIdOffset
    Boolean vV
  }
  command <<<
    mmseqs gff2db \
      ~{true="--gff-type" false="" gffGffType} \
      ~{true="--id-offset" false="" idIdOffset} \
      ~{true="-v" false="" vV}
  >>>
}