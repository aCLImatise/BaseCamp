version 1.0

task PhizzDelete {
  input {
    String? optionsOptions
  }
  command <<<
    phizz delete \
      ~{optionsOptions}
  >>>
}