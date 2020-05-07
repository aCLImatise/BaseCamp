version 1.0

task ColTransformColumnOutput.tab {
  input {
    String? inputInputTab
    String? addAddFactor
    String? mulMulFactor
    String? outputOutputTab
  }
  command <<<
    colTransform column output.tab \
      ~{inputInputTab} \
      ~{addAddFactor} \
      ~{mulMulFactor} \
      ~{outputOutputTab}
  >>>
}