version 1.0

task ColTransformColumnInput.tabMulFactor {
  input {
    String? addAddFactor
    String? mulMulFactor
    String? outputOutputTab
  }
  command <<<
    colTransform column input.tab mulFactor \
      ~{addAddFactor} \
      ~{mulMulFactor} \
      ~{outputOutputTab}
  >>>
}