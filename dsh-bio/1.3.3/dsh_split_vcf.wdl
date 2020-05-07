version 1.0

task DshSplitVcf {
  input {
    Boolean aboutAbout
    Boolean inputInputFile
    Boolean bytesBytes
    Boolean recordsRecords
    Boolean prefixPrefix
    Boolean leftLeftPad
    Boolean suffixSuffix
  }
  command <<<
    dsh-split-vcf \
      ~{true="--about" false="" aboutAbout} \
      ~{true="--input-file" false="" inputInputFile} \
      ~{true="--bytes" false="" bytesBytes} \
      ~{true="--records" false="" recordsRecords} \
      ~{true="--prefix" false="" prefixPrefix} \
      ~{true="--left-pad" false="" leftLeftPad} \
      ~{true="--suffix" false="" suffixSuffix}
  >>>
}