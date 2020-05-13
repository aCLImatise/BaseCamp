version 1.0

task Hulk {
  input {
    String kmKmErSize
    String logLog
    String outfileOutfile
    Int processorsProcessors
    Boolean profilingProfiling
  }
  command <<<
    hulk \
      ~{if defined(kmKmErSize) then ("--kmerSize " +  '"' + kmKmErSize + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{if defined(outfileOutfile) then ("--outFile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(processorsProcessors) then ("--processors " +  '"' + processorsProcessors + '"') else ""} \
      ~{true="--profiling" false="" profilingProfiling}
  >>>
}