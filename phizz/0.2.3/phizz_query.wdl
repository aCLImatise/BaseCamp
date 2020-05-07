version 1.0

task PhizzQuery {
  input {
    String? optionsOptions
  }
  command <<<
    phizz query \
      ~{optionsOptions}
  >>>
}