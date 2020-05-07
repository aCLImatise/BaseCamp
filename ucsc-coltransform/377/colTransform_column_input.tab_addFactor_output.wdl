version 1.0

task ColTransformColumnInput.tabAddFactorOutput.tab {
  input {
    String? mulMulFactor
    String? outputOutputTab
  }
  command <<<
    colTransform column input.tab addFactor output.tab \
      ~{mulMulFactor} \
      ~{outputOutputTab}
  >>>
}