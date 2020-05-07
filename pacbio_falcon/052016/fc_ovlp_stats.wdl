version 1.0

task FcOvlpStats {
  input {
    String nNCore
    String fofFofN
    Int minMinLen
    Boolean streamStream
    Boolean debugDebug
    Boolean silentSilent
  }
  command <<<
    fc_ovlp_stats \
      ~{if defined(nNCore) then ("--n_core " +  '"' + nNCore + '"') else ""} \
      ~{if defined(fofFofN) then ("--fofn " +  '"' + fofFofN + '"') else ""} \
      ~{if defined(minMinLen) then ("--min_len " +  '"' + minMinLen + '"') else ""} \
      ~{true="--stream" false="" streamStream} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--silent" false="" silentSilent}
  >>>
}