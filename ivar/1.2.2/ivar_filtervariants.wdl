version 1.0

task IvarFiltervariants {
  input {
    Boolean tT
    Boolean fF
    Boolean pP
    String? replicateReplicateOneTsv
    String? orOr
    String? ivarIvar
    String? filterFilterVariants
  }
  command <<<
    ivar filtervariants \
      ~{replicateReplicateOneTsv} \
      ~{true="-t" false="" tT} \
      ~{true="-f" false="" fF} \
      ~{true="-p" false="" pP} \
      ~{orOr} \
      ~{ivarIvar} \
      ~{filterFilterVariants}
  >>>
}