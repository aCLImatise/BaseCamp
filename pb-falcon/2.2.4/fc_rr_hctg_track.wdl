version 1.0

task FcRrHctgTrack.py {
  input {
    String nNCore
    String baseBaseDir
    String dbDbFn
    String lasLasFofNFn
    String phasedPhasedReadsFn
    String readReadToContigMapFn
    String rawRawReadIdsFn
    String outputOutput
    String partialsPartialsFn
    Int minMinLen
    Boolean streamStream
    Boolean debugDebug
    Boolean silentSilent
    String bestBestN
  }
  command <<<
    fc_rr_hctg_track.py \
      ~{if defined(nNCore) then ("--n-core " +  '"' + nNCore + '"') else ""} \
      ~{if defined(baseBaseDir) then ("--base-dir " +  '"' + baseBaseDir + '"') else ""} \
      ~{if defined(dbDbFn) then ("--db-fn " +  '"' + dbDbFn + '"') else ""} \
      ~{if defined(lasLasFofNFn) then ("--las-fofn-fn " +  '"' + lasLasFofNFn + '"') else ""} \
      ~{if defined(phasedPhasedReadsFn) then ("--phased-reads-fn " +  '"' + phasedPhasedReadsFn + '"') else ""} \
      ~{if defined(readReadToContigMapFn) then ("--read-to-contig-map-fn " +  '"' + readReadToContigMapFn + '"') else ""} \
      ~{if defined(rawRawReadIdsFn) then ("--rawread-ids-fn " +  '"' + rawRawReadIdsFn + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(partialsPartialsFn) then ("--partials-fn " +  '"' + partialsPartialsFn + '"') else ""} \
      ~{if defined(minMinLen) then ("--min-len " +  '"' + minMinLen + '"') else ""} \
      ~{true="--stream" false="" streamStream} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--silent" false="" silentSilent} \
      ~{if defined(bestBestN) then ("--bestn " +  '"' + bestBestN + '"') else ""}
  >>>
}