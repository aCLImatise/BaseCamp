version 1.0

task StagFlatten.pl {
  input {
    Boolean pP
    Boolean cC
    Boolean nN
    String? specialSpecialOperations
    String? specialSpecialOperations
  }
  command <<<
    stag-flatten.pl \
      ~{specialSpecialOperations} \
      ~{true="-p" false="" pP} \
      ~{true="-c" false="" cC} \
      ~{true="-n" false="" nN} \
      ~{specialSpecialOperations}
  >>>
}