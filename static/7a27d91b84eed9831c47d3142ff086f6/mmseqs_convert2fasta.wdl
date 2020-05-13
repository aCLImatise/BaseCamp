version 1.0

task MmseqsConvert2fasta {
  input {
    Boolean useUseHeaderFile
    Boolean vV
  }
  command <<<
    mmseqs convert2fasta \
      ~{true="--use-header-file" false="" useUseHeaderFile} \
      ~{true="-v" false="" vV}
  >>>
}