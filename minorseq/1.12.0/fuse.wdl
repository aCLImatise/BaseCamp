version 1.0

task Fuse {
  input {
    Boolean minMinCoverage
    Boolean emitEmitToolContract
    Boolean resolvedResolvedToolContract
    String? sourceSource
    String? outputOutput
  }
  command <<<
    fuse \
      ~{sourceSource} \
      ~{true="--min-coverage" false="" minMinCoverage} \
      ~{true="--emit-tool-contract" false="" emitEmitToolContract} \
      ~{true="--resolved-tool-contract" false="" resolvedResolvedToolContract} \
      ~{outputOutput}
  >>>
}