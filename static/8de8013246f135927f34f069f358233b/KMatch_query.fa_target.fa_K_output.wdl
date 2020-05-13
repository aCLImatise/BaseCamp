version 1.0

task KMatchQuery.faTarget.faKOutput.faMaxFreq {
  input {
    Int? minMinLength
    String? jumpJump
    Int? maxMaxFreq
  }
  command <<<
    KMatch query.fa target.fa K output.fa max_freq \
      ~{minMinLength} \
      ~{jumpJump} \
      ~{maxMaxFreq}
  >>>
}