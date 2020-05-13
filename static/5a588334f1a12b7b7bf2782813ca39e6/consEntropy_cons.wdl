version 1.0

task ConsEntropyCons.mod {
  input {
    String? optionsOptions
    String? targetTargetCoverage
    String? expectedExpectedLength
    String? consConsMod
    String? nonNonConsMod
  }
  command <<<
    consEntropy cons.mod \
      ~{optionsOptions} \
      ~{targetTargetCoverage} \
      ~{expectedExpectedLength} \
      ~{consConsMod} \
      ~{nonNonConsMod}
  >>>
}