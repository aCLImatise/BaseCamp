version 1.0

task OmeroAdminReindex {
  input {
    Boolean jdJdWp
    String memMem
    String batchBatch
    String mergeMergeFactor
    String ramRamBufferSize
    String lockLockFactory
    Boolean preparePrepare
    Boolean fullFull
    Boolean eventsEvents
    String resetReset
    Boolean dryDryRun
    Boolean foregroundForeground
    Array[String]+ classClass
    Boolean wipeWipe
    Boolean finishFinish
  }
  command <<<
    omero admin reindex \
      ~{true="--jdwp" false="" jdJdWp} \
      ~{if defined(memMem) then ("--mem " +  '"' + memMem + '"') else ""} \
      ~{if defined(batchBatch) then ("--batch " +  '"' + batchBatch + '"') else ""} \
      ~{if defined(mergeMergeFactor) then ("--merge-factor " +  '"' + mergeMergeFactor + '"') else ""} \
      ~{if defined(ramRamBufferSize) then ("--ram-buffer-size " +  '"' + ramRamBufferSize + '"') else ""} \
      ~{if defined(lockLockFactory) then ("--lock-factory " +  '"' + lockLockFactory + '"') else ""} \
      ~{true="--prepare" false="" preparePrepare} \
      ~{true="--full" false="" fullFull} \
      ~{true="--events" false="" eventsEvents} \
      ~{if defined(resetReset) then ("--reset " +  '"' + resetReset + '"') else ""} \
      ~{true="--dryrun" false="" dryDryRun} \
      ~{true="--foreground" false="" foregroundForeground} \
      ~{if defined(classClass) then ("--class " +  '"' + classClass + '"') else ""} \
      ~{true="--wipe" false="" wipeWipe} \
      ~{true="--finish" false="" finishFinish}
  >>>
}