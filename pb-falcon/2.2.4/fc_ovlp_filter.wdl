version 1.0

task FcOvlpFilter {
  input {
    String outOutFn
    String nNCore
    String lasLasFofN
    String dbDb
    Int maxMaxDiff
    Int maxMaxCov
    Int minMinCov
    Int minMinLen
    Int minMinIdt
    Boolean ignoreIgnoreIndels
    String bestBestN
    Boolean streamStream
    Boolean debugDebug
    Boolean silentSilent
  }
  command <<<
    fc_ovlp_filter \
      ~{if defined(outOutFn) then ("--out-fn " +  '"' + outOutFn + '"') else ""} \
      ~{if defined(nNCore) then ("--n-core " +  '"' + nNCore + '"') else ""} \
      ~{if defined(lasLasFofN) then ("--las-fofn " +  '"' + lasLasFofN + '"') else ""} \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(maxMaxDiff) then ("--max-diff " +  '"' + maxMaxDiff + '"') else ""} \
      ~{if defined(maxMaxCov) then ("--max-cov " +  '"' + maxMaxCov + '"') else ""} \
      ~{if defined(minMinCov) then ("--min-cov " +  '"' + minMinCov + '"') else ""} \
      ~{if defined(minMinLen) then ("--min-len " +  '"' + minMinLen + '"') else ""} \
      ~{if defined(minMinIdt) then ("--min-idt " +  '"' + minMinIdt + '"') else ""} \
      ~{true="--ignore-indels" false="" ignoreIgnoreIndels} \
      ~{if defined(bestBestN) then ("--bestn " +  '"' + bestBestN + '"') else ""} \
      ~{true="--stream" false="" streamStream} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--silent" false="" silentSilent}
  >>>
}