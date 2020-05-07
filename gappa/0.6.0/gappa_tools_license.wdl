version 1.0

task GappaToolsLicense {
  input {
    Boolean fullFull
    String? optionsOptions
  }
  command <<<
    gappa tools license \
      ~{optionsOptions} \
      ~{true="--full" false="" fullFull}
  >>>
}