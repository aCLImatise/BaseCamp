version 1.0

task ArbClean {
  input {
    String? sessionSession
    String? oldOld
    String? targetsTargets
    String? killKillAll
  }
  command <<<
    arb_clean \
      ~{sessionSession} \
      ~{oldOld} \
      ~{targetsTargets} \
      ~{killKillAll}
  >>>
}