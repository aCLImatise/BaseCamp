version 1.0

task KMatchJump {
  input {
    String? queryQueryFa
    String? targetTargetFa
    String? kK
    String? outputOutputFa
    Int? minMinLength
    String? jumpJump
    Int? maxMaxFreq
  }
  command <<<
    KMatch jump \
      ~{queryQueryFa} \
      ~{targetTargetFa} \
      ~{kK} \
      ~{outputOutputFa} \
      ~{minMinLength} \
      ~{jumpJump} \
      ~{maxMaxFreq}
  >>>
}