version 1.0

task Smartrel {
  input {
    String? badBad
    String? paramsParams
  }
  command <<<
    smartrel \
      ~{badBad} \
      ~{paramsParams}
  >>>
}