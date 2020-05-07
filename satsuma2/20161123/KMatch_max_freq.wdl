version 1.0

task KMatchMaxFreq {
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
    KMatch max_freq \
      ~{queryQueryFa} \
      ~{targetTargetFa} \
      ~{kK} \
      ~{outputOutputFa} \
      ~{minMinLength} \
      ~{jumpJump} \
      ~{maxMaxFreq}
  >>>
}