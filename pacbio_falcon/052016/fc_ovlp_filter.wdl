version 1.0

task FcOvlpFilter {
  input {
    String nNCore
    String fofFofN
    String dbDb
    Int maxMaxDiff
    Int maxMaxCov
    Int minMinCov
    Int minMinLen
    String bestBestN
    Boolean streamStream
    Boolean debugDebug
    Boolean silentSilent
  }
  command <<<
    fc_ovlp_filter \
      ~{if defined(nNCore) then ("--n_core " +  '"' + nNCore + '"') else ""} \
      ~{if defined(fofFofN) then ("--fofn " +  '"' + fofFofN + '"') else ""} \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(maxMaxDiff) then ("--max_diff " +  '"' + maxMaxDiff + '"') else ""} \
      ~{if defined(maxMaxCov) then ("--max_cov " +  '"' + maxMaxCov + '"') else ""} \
      ~{if defined(minMinCov) then ("--min_cov " +  '"' + minMinCov + '"') else ""} \
      ~{if defined(minMinLen) then ("--min_len " +  '"' + minMinLen + '"') else ""} \
      ~{if defined(bestBestN) then ("--bestn " +  '"' + bestBestN + '"') else ""} \
      ~{true="--stream" false="" streamStream} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--silent" false="" silentSilent}
  >>>
}