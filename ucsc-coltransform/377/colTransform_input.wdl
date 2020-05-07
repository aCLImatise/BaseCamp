version 1.0

task ColTransformInput.tab {
  input {
    String? columnColumn
    String? inputInputTab
    String? addAddFactor
    String? mulMulFactor
    String? outputOutputTab
  }
  command <<<
    colTransform input.tab \
      ~{columnColumn} \
      ~{inputInputTab} \
      ~{addAddFactor} \
      ~{mulMulFactor} \
      ~{outputOutputTab}
  >>>
}