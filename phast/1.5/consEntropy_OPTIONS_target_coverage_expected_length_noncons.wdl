version 1.0

task ConsEntropyOPTIONSTargetCoverageExpectedLengthNoncons.mod {
  input {
    String? consConsMod
    String? nonNonConsMod
  }
  command <<<
    consEntropy OPTIONS target-coverage expected-length noncons.mod \
      ~{consConsMod} \
      ~{nonNonConsMod}
  >>>
}