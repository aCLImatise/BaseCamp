version 1.0

task PathoLive.py {
  input {
    String bclBclDir
    String indexIndex
    String readsReads
    String outOutCycles
    String outOutDir
    Int maxMaxSoftClipRatio
    String hiHiLive
    String numNumThreads
    String alignAlignMode
    String outOutMode
    String outOutFormat
    Boolean verboseVerbose
    String lanesLanes
    String tilesTiles
    Int maxMaxTile
    String configConfig
  }
  command <<<
    PathoLive.py \
      ~{if defined(bclBclDir) then ("--bcl_dir " +  '"' + bclBclDir + '"') else ""} \
      ~{if defined(indexIndex) then ("--index " +  '"' + indexIndex + '"') else ""} \
      ~{if defined(readsReads) then ("--reads " +  '"' + readsReads + '"') else ""} \
      ~{if defined(outOutCycles) then ("--out_cycles " +  '"' + outOutCycles + '"') else ""} \
      ~{if defined(outOutDir) then ("--out_dir " +  '"' + outOutDir + '"') else ""} \
      ~{if defined(maxMaxSoftClipRatio) then ("--max_softclip_ratio " +  '"' + maxMaxSoftClipRatio + '"') else ""} \
      ~{if defined(hiHiLive) then ("--hilive " +  '"' + hiHiLive + '"') else ""} \
      ~{if defined(numNumThreads) then ("--num_threads " +  '"' + numNumThreads + '"') else ""} \
      ~{if defined(alignAlignMode) then ("--align_mode " +  '"' + alignAlignMode + '"') else ""} \
      ~{if defined(outOutMode) then ("--out_mode " +  '"' + outOutMode + '"') else ""} \
      ~{if defined(outOutFormat) then ("--out_format " +  '"' + outOutFormat + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(lanesLanes) then ("--lanes " +  '"' + lanesLanes + '"') else ""} \
      ~{if defined(tilesTiles) then ("--tiles " +  '"' + tilesTiles + '"') else ""} \
      ~{if defined(maxMaxTile) then ("--max_tile " +  '"' + maxMaxTile + '"') else ""} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""}
  >>>
}