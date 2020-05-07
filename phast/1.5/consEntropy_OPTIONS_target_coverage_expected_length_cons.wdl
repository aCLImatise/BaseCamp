version 1.0

task ConsEntropyOPTIONSTargetCoverageExpectedLengthCons.mod {
  input {
    String? nonNonConsMod
  }
  command <<<
    consEntropy OPTIONS target-coverage expected-length cons.mod \
      ~{nonNonConsMod}
  >>>
}