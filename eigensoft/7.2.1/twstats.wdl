version 1.0

task Twstats {
  input {
    String? badBad
    String? paramsParams
  }
  command <<<
    twstats \
      ~{badBad} \
      ~{paramsParams}
  >>>
}