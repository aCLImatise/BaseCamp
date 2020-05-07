version 1.0

task RunTasmanian {
  input {
    Boolean fragmentFragmentLength
    Boolean outputOutputPrefix
    Boolean confidenceConfidence
    Boolean debugDebug
  }
  command <<<
    run_tasmanian \
      ~{true="--fragment-length" false="" fragmentFragmentLength} \
      ~{true="--output-prefix" false="" outputOutputPrefix} \
      ~{true="--confidence" false="" confidenceConfidence} \
      ~{true="--debug" false="" debugDebug}
  >>>
}