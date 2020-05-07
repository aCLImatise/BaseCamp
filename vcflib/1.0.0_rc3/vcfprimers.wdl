version 1.0

task Vcfprimers {
  input {
    Boolean fastFastAReference
    Boolean primerPrimerLength
    String? vcfVcfFile
  }
  command <<<
    vcfprimers \
      ~{vcfVcfFile} \
      ~{true="--fasta-reference" false="" fastFastAReference} \
      ~{true="--primer-length" false="" primerPrimerLength}
  >>>
}