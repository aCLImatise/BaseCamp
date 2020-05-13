version 1.0

task FcOvlpFilterWithPhase.py {
  input {
    String nNCore
    String fofFofN
    String dbDb
    Int maxMaxDiff
    Int maxMaxCov
    Int minMinCov
    Int minMinLen
    String bestBestN
    String ridRidPhaseMap
    String strictnessStrictness
  }
  command <<<
    fc_ovlp_filter_with_phase.py \
      ~{if defined(nNCore) then ("--n-core " +  '"' + nNCore + '"') else ""} \
      ~{if defined(fofFofN) then ("--fofn " +  '"' + fofFofN + '"') else ""} \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(maxMaxDiff) then ("--max-diff " +  '"' + maxMaxDiff + '"') else ""} \
      ~{if defined(maxMaxCov) then ("--max-cov " +  '"' + maxMaxCov + '"') else ""} \
      ~{if defined(minMinCov) then ("--min-cov " +  '"' + minMinCov + '"') else ""} \
      ~{if defined(minMinLen) then ("--min-len " +  '"' + minMinLen + '"') else ""} \
      ~{if defined(bestBestN) then ("--bestn " +  '"' + bestBestN + '"') else ""} \
      ~{if defined(ridRidPhaseMap) then ("--rid-phase-map " +  '"' + ridRidPhaseMap + '"') else ""} \
      ~{if defined(strictnessStrictness) then ("--strictness " +  '"' + strictnessStrictness + '"') else ""}
  >>>
}