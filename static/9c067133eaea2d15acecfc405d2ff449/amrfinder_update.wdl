version 1.0

task AmrfinderUpdate {
  input {
    String databaseDatabase
    Boolean quietQuiet
    String threadsThreads
    Boolean debugDebug
    String logLog
  }
  command <<<
    amrfinder_update \
      ~{if defined(databaseDatabase) then ("--database " +  '"' + databaseDatabase + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""}
  >>>
}