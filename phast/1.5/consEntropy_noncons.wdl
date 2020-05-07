version 1.0

task ConsEntropyNoncons.mod {
  input {
    String? optionsOptions
    String? targetTargetCoverage
    String? expectedExpectedLength
    String? consConsMod
    String? nonNonConsMod
  }
  command <<<
    consEntropy noncons.mod \
      ~{optionsOptions} \
      ~{targetTargetCoverage} \
      ~{expectedExpectedLength} \
      ~{consConsMod} \
      ~{nonNonConsMod}
  >>>
}