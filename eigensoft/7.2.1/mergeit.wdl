version 1.0

task Mergeit {
  input {
    String? badBad
    String? paramsParams
  }
  command <<<
    mergeit \
      ~{badBad} \
      ~{paramsParams}
  >>>
}