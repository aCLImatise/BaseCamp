version 1.0

task Cleric {
  input {
    Boolean alnAln
    Boolean emitEmitToolContract
    Boolean resolvedResolvedToolContract
    String? bamBam
    String? refRef
    String? targetTarget
    String? outputOutput
  }
  command <<<
    cleric \
      ~{bamBam} \
      ~{true="--aln" false="" alnAln} \
      ~{true="--emit-tool-contract" false="" emitEmitToolContract} \
      ~{true="--resolved-tool-contract" false="" resolvedResolvedToolContract} \
      ~{refRef} \
      ~{targetTarget} \
      ~{outputOutput}
  >>>
}