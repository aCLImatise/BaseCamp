version 1.0

task MikadoConfigure {
  input {
    Array[String]+ skipSkipSplit
    Boolean jsonJson
    Boolean yamlYaml
    Boolean toToMl
    String outOutDir
    Int minimumMinimumCdnaLength
    Int maxMaxIntronLength
    String scoringScoring
    String copyCopyScoring
    Int iI
    String sublocSublocIOut
    String monoMonoLociOut
    Boolean noNoPad
    Boolean onlyOnlyReferenceUpdate
    Boolean excludeExcludeRetainedIntrons
    Boolean keepKeepDisruptedCds
    Boolean checkCheckReferences
    String schedulerScheduler
    String exeExe
    String clusterClusterConfig
  }
  command <<<
    mikado configure \
      ~{if defined(skipSkipSplit) then ("--skip-split " +  '"' + skipSkipSplit + '"') else ""} \
      ~{true="--json" false="" jsonJson} \
      ~{true="--yaml" false="" yamlYaml} \
      ~{true="--toml" false="" toToMl} \
      ~{if defined(outOutDir) then ("--out-dir " +  '"' + outOutDir + '"') else ""} \
      ~{if defined(minimumMinimumCdnaLength) then ("--minimum-cdna-length " +  '"' + minimumMinimumCdnaLength + '"') else ""} \
      ~{if defined(maxMaxIntronLength) then ("--max-intron-length " +  '"' + maxMaxIntronLength + '"') else ""} \
      ~{if defined(scoringScoring) then ("--scoring " +  '"' + scoringScoring + '"') else ""} \
      ~{if defined(copyCopyScoring) then ("--copy-scoring " +  '"' + copyCopyScoring + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(sublocSublocIOut) then ("--subloci-out " +  '"' + sublocSublocIOut + '"') else ""} \
      ~{if defined(monoMonoLociOut) then ("--monoloci-out " +  '"' + monoMonoLociOut + '"') else ""} \
      ~{true="--no-pad" false="" noNoPad} \
      ~{true="--only-reference-update" false="" onlyOnlyReferenceUpdate} \
      ~{true="--exclude-retained-introns" false="" excludeExcludeRetainedIntrons} \
      ~{true="--keep-disrupted-cds" false="" keepKeepDisruptedCds} \
      ~{true="--check-references" false="" checkCheckReferences} \
      ~{if defined(schedulerScheduler) then ("--scheduler " +  '"' + schedulerScheduler + '"') else ""} \
      ~{if defined(exeExe) then ("--exe " +  '"' + exeExe + '"') else ""} \
      ~{if defined(clusterClusterConfig) then ("--cluster_config " +  '"' + clusterClusterConfig + '"') else ""}
  >>>
}