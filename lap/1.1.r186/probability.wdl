version 1.0

task Probability {
  input {
    Int separationSeparationStdDev
    Boolean useUseMates
    String? optionOption
  }
  command <<<
    probability \
      ~{optionOption} \
      ~{if defined(separationSeparationStdDev) then ("--separation-std-dev " +  '"' + separationSeparationStdDev + '"') else ""} \
      ~{true="--use-mates" false="" useUseMates}
  >>>
}