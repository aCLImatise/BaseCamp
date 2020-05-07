version 1.0

task ColTransformColumnMulFactor {
  input {
    String? inputInputTab
    String? addAddFactor
    String? mulMulFactor
    String? outputOutputTab
  }
  command <<<
    colTransform column mulFactor \
      ~{inputInputTab} \
      ~{addAddFactor} \
      ~{mulMulFactor} \
      ~{outputOutputTab}
  >>>
}