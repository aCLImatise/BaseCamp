version 1.0

task PhizzInit {
  input {
    String? optionsOptions
  }
  command <<<
    phizz init \
      ~{optionsOptions}
  >>>
}