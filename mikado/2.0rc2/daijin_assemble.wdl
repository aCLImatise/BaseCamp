version 1.0

task DaijinAssemble {
  input {
    Array[String]+ forceForceRun
    Array[String]+ cleanupCleanupMetadata
    String prefixPrefix
    Boolean detailedDetailedSummary
    Boolean listList
    Boolean dagDag
    Boolean noNoLock
    String? configConfig
  }
  command <<<
    daijin assemble \
      ~{configConfig} \
      ~{if defined(forceForceRun) then ("--forcerun " +  '"' + forceForceRun + '"') else ""} \
      ~{if defined(cleanupCleanupMetadata) then ("--cleanup-metadata " +  '"' + cleanupCleanupMetadata + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{true="--detailed-summary" false="" detailedDetailedSummary} \
      ~{true="--list" false="" listList} \
      ~{true="--dag" false="" dagDag} \
      ~{true="--nolock" false="" noNoLock}
  >>>
}