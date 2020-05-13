version 1.0

task RtgGenomesim {
  input {
    String outputOutput
    String commentComment
    String freqFreq
    Int lengthLength
    Int maxMaxLength
    Int minMinLength
    Int numNumContigs
    String prefixPrefix
    Int seedSeed
  }
  command <<<
    rtg genomesim \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(commentComment) then ("--comment " +  '"' + commentComment + '"') else ""} \
      ~{if defined(freqFreq) then ("--freq " +  '"' + freqFreq + '"') else ""} \
      ~{if defined(lengthLength) then ("--length " +  '"' + lengthLength + '"') else ""} \
      ~{if defined(maxMaxLength) then ("--max-length " +  '"' + maxMaxLength + '"') else ""} \
      ~{if defined(minMinLength) then ("--min-length " +  '"' + minMinLength + '"') else ""} \
      ~{if defined(numNumContigs) then ("--num-contigs " +  '"' + numNumContigs + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""}
  >>>
}