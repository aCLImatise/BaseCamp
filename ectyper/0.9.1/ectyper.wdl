version 1.0

task Ectyper {
  input {
    String inputInput
    String coresCores
    String percentPercentIdentity
    String percentPercentLength
    Boolean verifyVerify
    String outputOutput
    String refseqRefseq
    Boolean sequenceSequence
    Boolean debugDebug
  }
  command <<<
    ectyper \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""} \
      ~{if defined(percentPercentIdentity) then ("--percentIdentity " +  '"' + percentPercentIdentity + '"') else ""} \
      ~{if defined(percentPercentLength) then ("--percentLength " +  '"' + percentPercentLength + '"') else ""} \
      ~{true="--verify" false="" verifyVerify} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(refseqRefseq) then ("--refseq " +  '"' + refseqRefseq + '"') else ""} \
      ~{true="--sequence" false="" sequenceSequence} \
      ~{true="--debug" false="" debugDebug}
  >>>
}