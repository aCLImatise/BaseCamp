version 1.0

task Mbuffer {
  input {
    String? optionsOptions
  }
  command <<<
    mbuffer \
      ~{optionsOptions}
  >>>
}