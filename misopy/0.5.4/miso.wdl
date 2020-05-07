version 1.0

task Miso {
  input {
    String runRun
    String eventEventType
    Boolean useUseCluster
    String chunkChunkJobs
    Boolean noNoFilterEvents
    String settingsSettingsFilename
    String readReadLen
    String pairedPairedEnd
    String overhangOverhangLen
    String outputOutputDir
    String jobJobName
    Boolean sSGearray
    Boolean prefilterPrefilter
    String pP
    Boolean noNoWait
    String viewViewGene
  }
  command <<<
    miso \
      ~{if defined(runRun) then ("--run " +  '"' + runRun + '"') else ""} \
      ~{if defined(eventEventType) then ("--event-type " +  '"' + eventEventType + '"') else ""} \
      ~{true="--use-cluster" false="" useUseCluster} \
      ~{if defined(chunkChunkJobs) then ("--chunk-jobs " +  '"' + chunkChunkJobs + '"') else ""} \
      ~{true="--no-filter-events" false="" noNoFilterEvents} \
      ~{if defined(settingsSettingsFilename) then ("--settings-filename " +  '"' + settingsSettingsFilename + '"') else ""} \
      ~{if defined(readReadLen) then ("--read-len " +  '"' + readReadLen + '"') else ""} \
      ~{if defined(pairedPairedEnd) then ("--paired-end " +  '"' + pairedPairedEnd + '"') else ""} \
      ~{if defined(overhangOverhangLen) then ("--overhang-len " +  '"' + overhangOverhangLen + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output-dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(jobJobName) then ("--job-name " +  '"' + jobJobName + '"') else ""} \
      ~{true="--SGEarray" false="" sSGearray} \
      ~{true="--prefilter" false="" prefilterPrefilter} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="--no-wait" false="" noNoWait} \
      ~{if defined(viewViewGene) then ("--view-gene " +  '"' + viewViewGene + '"') else ""}
  >>>
}