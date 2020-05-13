version 1.0

task Mprobability {
  input {
    Int separationSeparationStdDev
    Boolean useUseMates
    String? optionOption
  }
  command <<<
    mprobability \
      ~{optionOption} \
      ~{if defined(separationSeparationStdDev) then ("--separation-std-dev " +  '"' + separationSeparationStdDev + '"') else ""} \
      ~{true="--use-mates" false="" useUseMates}
  >>>
}