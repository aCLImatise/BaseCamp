version 1.0

task PlanemoDocs {
  input {
    String? optionsOptions
  }
  command <<<
    planemo docs \
      ~{optionsOptions}
  >>>
}