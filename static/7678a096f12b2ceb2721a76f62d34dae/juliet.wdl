version 1.0

task Juliet {
  input {
    Boolean configConfig
    Boolean modeModePhasing
    Boolean regionRegion
    Boolean drmDrmOnly
    Boolean minMinPerc
    Boolean maxMaxPerc
    Boolean subSub
    Boolean delDel
    Boolean verboseVerbose
    Boolean debugDebug
    Boolean emitEmitToolContract
    Boolean resolvedResolvedToolContract
    String? sourceSource
  }
  command <<<
    juliet \
      ~{sourceSource} \
      ~{true="--config" false="" configConfig} \
      ~{true="--mode-phasing" false="" modeModePhasing} \
      ~{true="--region" false="" regionRegion} \
      ~{true="--drm-only" false="" drmDrmOnly} \
      ~{true="--min-perc" false="" minMinPerc} \
      ~{true="--max-perc" false="" maxMaxPerc} \
      ~{true="--sub" false="" subSub} \
      ~{true="--del" false="" delDel} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--emit-tool-contract" false="" emitEmitToolContract} \
      ~{true="--resolved-tool-contract" false="" resolvedResolvedToolContract}
  >>>
}