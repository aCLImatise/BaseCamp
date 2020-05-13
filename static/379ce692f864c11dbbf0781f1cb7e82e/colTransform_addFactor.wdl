version 1.0

task ColTransformAddFactor {
  input {
    String? columnColumn
    String? inputInputTab
    String? addAddFactor
    String? mulMulFactor
    String? outputOutputTab
  }
  command <<<
    colTransform addFactor \
      ~{columnColumn} \
      ~{inputInputTab} \
      ~{addAddFactor} \
      ~{mulMulFactor} \
      ~{outputOutputTab}
  >>>
}