version 1.0

task ColTransformColumnInput.tabOutput.tab {
  input {
    String? addAddFactor
    String? mulMulFactor
    String? outputOutputTab
  }
  command <<<
    colTransform column input.tab output.tab \
      ~{addAddFactor} \
      ~{mulMulFactor} \
      ~{outputOutputTab}
  >>>
}