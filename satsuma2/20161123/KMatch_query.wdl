version 1.0

task KMatchQuery.faMaxFreq {
  input {
    String? targetTargetFa
    String? kK
    String? outputOutputFa
    Int? minMinLength
    String? jumpJump
    Int? maxMaxFreq
  }
  command <<<
    KMatch query.fa max_freq \
      ~{targetTargetFa} \
      ~{kK} \
      ~{outputOutputFa} \
      ~{minMinLength} \
      ~{jumpJump} \
      ~{maxMaxFreq}
  >>>
}