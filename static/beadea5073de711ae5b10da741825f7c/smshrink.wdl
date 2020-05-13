version 1.0

task Smshrink {
  input {
    String? badBad
    String? paramsParams
  }
  command <<<
    smshrink \
      ~{badBad} \
      ~{paramsParams}
  >>>
}