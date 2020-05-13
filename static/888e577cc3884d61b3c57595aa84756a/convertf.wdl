version 1.0

task Convertf {
  input {
    String? badBad
    String? paramsParams
  }
  command <<<
    convertf \
      ~{badBad} \
      ~{paramsParams}
  >>>
}