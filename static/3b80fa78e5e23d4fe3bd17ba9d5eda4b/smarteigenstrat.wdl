version 1.0

task Smarteigenstrat {
  input {
    String? badBad
    String? paramsParams
  }
  command <<<
    smarteigenstrat \
      ~{badBad} \
      ~{paramsParams}
  >>>
}