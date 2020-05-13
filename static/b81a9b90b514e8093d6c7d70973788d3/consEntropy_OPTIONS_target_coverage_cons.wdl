version 1.0

task ConsEntropyOPTIONSTargetCoverageCons.mod {
  input {
    String? expectedExpectedLength
    String? consConsMod
    String? nonNonConsMod
  }
  command <<<
    consEntropy OPTIONS target-coverage cons.mod \
      ~{expectedExpectedLength} \
      ~{consConsMod} \
      ~{nonNonConsMod}
  >>>
}