version 1.0

task ConsEntropyOPTIONSNoncons.mod {
  input {
    String? targetTargetCoverage
    String? expectedExpectedLength
    String? consConsMod
    String? nonNonConsMod
  }
  command <<<
    consEntropy OPTIONS noncons.mod \
      ~{targetTargetCoverage} \
      ~{expectedExpectedLength} \
      ~{consConsMod} \
      ~{nonNonConsMod}
  >>>
}