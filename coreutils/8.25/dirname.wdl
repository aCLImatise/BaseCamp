version 1.0

task Dirname {
  input {
    Boolean zeroZero
    String? optionOption
    String? nameName
  }
  command <<<
    dirname \
      ~{optionOption} \
      ~{true="--zero" false="" zeroZero} \
      ~{nameName}
  >>>
}