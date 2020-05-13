version 1.0

task KMatchQuery.faOutput.fa {
  input {
    String? targetTargetFa
    String? kK
    String? outputOutputFa
    Int? minMinLength
    String? jumpJump
    Int? maxMaxFreq
  }
  command <<<
    KMatch query.fa output.fa \
      ~{targetTargetFa} \
      ~{kK} \
      ~{outputOutputFa} \
      ~{minMinLength} \
      ~{jumpJump} \
      ~{maxMaxFreq}
  >>>
}