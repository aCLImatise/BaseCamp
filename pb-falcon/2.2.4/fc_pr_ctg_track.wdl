version 1.0

task FcPrCtgTrack {
  input {
    String nNCore
    String baseBaseDir
    Int minMinLen
    Boolean streamStream
    Boolean debugDebug
    Boolean silentSilent
    String bestBestN
  }
  command <<<
    fc_pr_ctg_track \
      ~{if defined(nNCore) then ("--n_core " +  '"' + nNCore + '"') else ""} \
      ~{if defined(baseBaseDir) then ("--base_dir " +  '"' + baseBaseDir + '"') else ""} \
      ~{if defined(minMinLen) then ("--min_len " +  '"' + minMinLen + '"') else ""} \
      ~{true="--stream" false="" streamStream} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--silent" false="" silentSilent} \
      ~{if defined(bestBestN) then ("--bestn " +  '"' + bestBestN + '"') else ""}
  >>>
}