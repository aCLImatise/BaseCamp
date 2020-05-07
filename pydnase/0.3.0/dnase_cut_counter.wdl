version 1.0

task DnaseCutCounter.pyRegions {
  input {
    Boolean aA
    String? regionsRegions
    String? readsReads
    String? outputOutput
  }
  command <<<
    dnase_cut_counter.py regions \
      ~{regionsRegions} \
      ~{true="-A" false="" aA} \
      ~{readsReads} \
      ~{outputOutput}
  >>>
}