version 1.0

task Baseprog {
  input {
    String? badBad
    String? paramsParams
  }
  command <<<
    baseprog \
      ~{badBad} \
      ~{paramsParams}
  >>>
}