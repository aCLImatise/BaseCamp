version 1.0

task ColTransformColumnAddFactor {
  input {
    String? inputInputTab
    String? addAddFactor
    String? mulMulFactor
    String? outputOutputTab
  }
  command <<<
    colTransform column addFactor \
      ~{inputInputTab} \
      ~{addAddFactor} \
      ~{mulMulFactor} \
      ~{outputOutputTab}
  >>>
}