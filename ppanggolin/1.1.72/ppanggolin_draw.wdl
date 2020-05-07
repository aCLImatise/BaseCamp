version 1.0

task PpanggolinDraw {
  input {
    String panPanGenome
    String outputOutput
    Boolean tileTilePlot
    Boolean noNoCloud
    String softSoftCore
    Boolean uUCurve
    String tmpdirTmpdir
    Boolean verboseVerbose
    String logLog
    String cpuCpu
    Boolean forceForce
  }
  command <<<
    ppanggolin draw \
      ~{if defined(panPanGenome) then ("--pangenome " +  '"' + panPanGenome + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--tile_plot" false="" tileTilePlot} \
      ~{true="--nocloud" false="" noNoCloud} \
      ~{if defined(softSoftCore) then ("--soft_core " +  '"' + softSoftCore + '"') else ""} \
      ~{true="--ucurve" false="" uUCurve} \
      ~{if defined(tmpdirTmpdir) then ("--tmpdir " +  '"' + tmpdirTmpdir + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{if defined(cpuCpu) then ("--cpu " +  '"' + cpuCpu + '"') else ""} \
      ~{true="--force" false="" forceForce}
  >>>
}