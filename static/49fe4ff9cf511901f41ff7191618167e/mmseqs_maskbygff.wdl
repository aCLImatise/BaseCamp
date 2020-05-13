version 1.0

task MmseqsMaskbygff {
  input {
    Boolean gffGffType
    Boolean idIdOffset
    Boolean vV
  }
  command <<<
    mmseqs maskbygff \
      ~{true="--gff-type" false="" gffGffType} \
      ~{true="--id-offset" false="" idIdOffset} \
      ~{true="-v" false="" vV}
  >>>
}