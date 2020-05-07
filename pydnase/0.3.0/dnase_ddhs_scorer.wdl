version 1.0

task DnaseDdhsScorer.py {
  input {
    Boolean lL
    Boolean aA
    String? regionsRegions
    String? treatTreatDhs
    String? controlControlDhs
    String? readsReadsTreat
    String? readsReadsControl
    String? outputOutput
  }
  command <<<
    dnase_ddhs_scorer.py \
      ~{regionsRegions} \
      ~{true="-l" false="" lL} \
      ~{true="-A" false="" aA} \
      ~{treatTreatDhs} \
      ~{controlControlDhs} \
      ~{readsReadsTreat} \
      ~{readsReadsControl} \
      ~{outputOutput}
  >>>
}