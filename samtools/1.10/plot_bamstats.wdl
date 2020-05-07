version 1.0

task PlotBamstats {
  input {
    Boolean keepKeepFiles
    Boolean logLogY
    Boolean mergeMerge
    File prefixPrefix
    File refRefStats
    File doDoRefStats
    File targetsTargets
  }
  command <<<
    plot-bamstats \
      ~{true="--keep-files" false="" keepKeepFiles} \
      ~{true="--log-y" false="" logLogY} \
      ~{true="--merge" false="" mergeMerge} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(refRefStats) then ("--ref-stats " +  '"' + refRefStats + '"') else ""} \
      ~{if defined(doDoRefStats) then ("--do-ref-stats " +  '"' + doDoRefStats + '"') else ""} \
      ~{if defined(targetsTargets) then ("--targets " +  '"' + targetsTargets + '"') else ""}
  >>>
}