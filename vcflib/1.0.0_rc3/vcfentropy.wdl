version 1.0

task Vcfentropy {
  input {
    Boolean fastFastAReference
    Boolean windowWindowSize
    String? vcfVcfFile
  }
  command <<<
    vcfentropy \
      ~{vcfVcfFile} \
      ~{true="--fasta-reference" false="" fastFastAReference} \
      ~{true="--window-size" false="" windowWindowSize}
  >>>
}