version 1.0

task CrimsonStarFusionOUTPUT {
  input {
    String? optionsOptions
    String? inputInput
    String? outputOutput
  }
  command <<<
    crimson star-fusion OUTPUT \
      ~{optionsOptions} \
      ~{inputInput} \
      ~{outputOutput}
  >>>
}