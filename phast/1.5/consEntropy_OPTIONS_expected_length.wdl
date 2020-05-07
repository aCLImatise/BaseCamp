version 1.0

task ConsEntropyOPTIONSExpectedLength {
  input {
    String? targetTargetCoverage
    String? expectedExpectedLength
    String? consConsMod
    String? nonNonConsMod
  }
  command <<<
    consEntropy OPTIONS expected-length \
      ~{targetTargetCoverage} \
      ~{expectedExpectedLength} \
      ~{consConsMod} \
      ~{nonNonConsMod}
  >>>
}