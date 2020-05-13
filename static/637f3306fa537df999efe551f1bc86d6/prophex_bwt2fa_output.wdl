version 1.0

task ProphexBwt2faOutput.fa {
  input {
    String? idxIdxBase
    String? outputOutputFa
  }
  command <<<
    prophex bwt2fa output.fa \
      ~{idxIdxBase} \
      ~{outputOutputFa}
  >>>
}