version 1.0

task ConsEntropyOPTIONSTargetCoverageNoncons.mod {
  input {
    String? expectedExpectedLength
    String? consConsMod
    String? nonNonConsMod
  }
  command <<<
    consEntropy OPTIONS target-coverage noncons.mod \
      ~{expectedExpectedLength} \
      ~{consConsMod} \
      ~{nonNonConsMod}
  >>>
}