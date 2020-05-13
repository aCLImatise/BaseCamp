version 1.0

task KssdShuffle {
  input {
    Boolean useUseDefault
    String? optionOption
  }
  command <<<
    kssd shuffle \
      ~{optionOption} \
      ~{true="--usedefault" false="" useUseDefault}
  >>>
}