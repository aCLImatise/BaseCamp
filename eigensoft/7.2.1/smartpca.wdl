version 1.0

task Smartpca {
  input {
    String? badBad
    String? paramsParams
  }
  command <<<
    smartpca \
      ~{badBad} \
      ~{paramsParams}
  >>>
}