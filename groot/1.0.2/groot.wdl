version 1.0

task Groot {
  input {
    String indexIndexDir
    String logLog
    Int processorsProcessors
    Boolean profilingProfiling
  }
  command <<<
    groot \
      ~{if defined(indexIndexDir) then ("--indexDir " +  '"' + indexIndexDir + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{if defined(processorsProcessors) then ("--processors " +  '"' + processorsProcessors + '"') else ""} \
      ~{true="--profiling" false="" profilingProfiling}
  >>>
}