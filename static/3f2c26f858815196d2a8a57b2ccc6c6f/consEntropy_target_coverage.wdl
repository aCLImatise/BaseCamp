version 1.0

task ConsEntropyTargetCoverage {
  input {
    String? optionsOptions
    String? targetTargetCoverage
    String? expectedExpectedLength
    String? consConsMod
    String? nonNonConsMod
  }
  command <<<
    consEntropy target-coverage \
      ~{optionsOptions} \
      ~{targetTargetCoverage} \
      ~{expectedExpectedLength} \
      ~{consConsMod} \
      ~{nonNonConsMod}
  >>>
}