version 1.0

task PsassConvertINPUT {
  input {
    String? optionsOptions
    String? inputInput
  }
  command <<<
    psass convert INPUT \
      ~{optionsOptions} \
      ~{inputInput}
  >>>
}