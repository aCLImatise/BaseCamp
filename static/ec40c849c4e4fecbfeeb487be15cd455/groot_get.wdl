version 1.0

task GrootGet {
  input {
    String databaseDatabase
    String identityIdentity
    String outOut
    String indexIndexDir
    String logLog
    Int processorsProcessors
    Boolean profilingProfiling
    String? flagsFlags
  }
  command <<<
    groot get \
      ~{flagsFlags} \
      ~{if defined(databaseDatabase) then ("--database " +  '"' + databaseDatabase + '"') else ""} \
      ~{if defined(identityIdentity) then ("--identity " +  '"' + identityIdentity + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(indexIndexDir) then ("--indexDir " +  '"' + indexIndexDir + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{if defined(processorsProcessors) then ("--processors " +  '"' + processorsProcessors + '"') else ""} \
      ~{true="--profiling" false="" profilingProfiling}
  >>>
}