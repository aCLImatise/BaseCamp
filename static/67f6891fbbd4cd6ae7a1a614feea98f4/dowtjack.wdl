version 1.0

task Dowtjack {
  input {
    String? badBad
    String? paramsParams
  }
  command <<<
    dowtjack \
      ~{badBad} \
      ~{paramsParams}
  >>>
}