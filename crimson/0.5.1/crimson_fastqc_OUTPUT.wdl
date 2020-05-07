version 1.0

task CrimsonFastqcOUTPUT {
  input {
    String? optionsOptions
    String? inputInput
    String? outputOutput
  }
  command <<<
    crimson fastqc OUTPUT \
      ~{optionsOptions} \
      ~{inputInput} \
      ~{outputOutput}
  >>>
}