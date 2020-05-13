version 1.0

task Schavott {
  input {
    String runRunMode
    String scaffoldScaffoldEr
    String sSSpacePath
    String readReadType
    Int minMinReadLength
    Int minMinQuality
    String watchWatch
    String contigContigFile
    String triggerTriggerMode
    String skipSkip
    Int intensityIntensity
    Boolean plotPlot
    String outputOutput
  }
  command <<<
    schavott \
      ~{if defined(runRunMode) then ("--run_mode " +  '"' + runRunMode + '"') else ""} \
      ~{if defined(scaffoldScaffoldEr) then ("--scaffolder " +  '"' + scaffoldScaffoldEr + '"') else ""} \
      ~{if defined(sSSpacePath) then ("--sspace_path " +  '"' + sSSpacePath + '"') else ""} \
      ~{if defined(readReadType) then ("--read_type " +  '"' + readReadType + '"') else ""} \
      ~{if defined(minMinReadLength) then ("--min_read_length " +  '"' + minMinReadLength + '"') else ""} \
      ~{if defined(minMinQuality) then ("--min_quality " +  '"' + minMinQuality + '"') else ""} \
      ~{if defined(watchWatch) then ("--watch " +  '"' + watchWatch + '"') else ""} \
      ~{if defined(contigContigFile) then ("--contig_file " +  '"' + contigContigFile + '"') else ""} \
      ~{if defined(triggerTriggerMode) then ("--trigger_mode " +  '"' + triggerTriggerMode + '"') else ""} \
      ~{if defined(skipSkip) then ("--skip " +  '"' + skipSkip + '"') else ""} \
      ~{if defined(intensityIntensity) then ("--intensity " +  '"' + intensityIntensity + '"') else ""} \
      ~{true="--plot" false="" plotPlot} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}