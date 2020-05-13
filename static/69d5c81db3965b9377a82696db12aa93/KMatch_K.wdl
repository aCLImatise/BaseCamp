version 1.0

task KMatchK {
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
    KMatch K \
      ~{queryQueryFa} \
      ~{targetTargetFa} \
      ~{kK} \
      ~{outputOutputFa} \
      ~{minMinLength} \
      ~{jumpJump} \
      ~{maxMaxFreq}
  >>>
}