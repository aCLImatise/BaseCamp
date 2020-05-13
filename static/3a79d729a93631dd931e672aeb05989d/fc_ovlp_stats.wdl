version 1.0

task FcOvlpStats {
  input {
    String nNCore
    String fofFofN
    Int minMinLen
    String dbDbFn
    Boolean streamStream
    Boolean debugDebug
    Boolean silentSilent
  }
  command <<<
    fc_ovlp_stats \
      ~{if defined(nNCore) then ("--n-core " +  '"' + nNCore + '"') else ""} \
      ~{if defined(fofFofN) then ("--fofn " +  '"' + fofFofN + '"') else ""} \
      ~{if defined(minMinLen) then ("--min-len " +  '"' + minMinLen + '"') else ""} \
      ~{if defined(dbDbFn) then ("--db-fn " +  '"' + dbDbFn + '"') else ""} \
      ~{true="--stream" false="" streamStream} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--silent" false="" silentSilent}
  >>>
}