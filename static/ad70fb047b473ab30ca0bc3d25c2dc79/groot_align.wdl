version 1.0

task GrootAlign {
  input {
    Float contContThresh
    Boolean fastFastA
    String fastFastQ
    String graphGraphDir
    Float minkMinkMercoV
    String indexIndexDir
    String logLog
    Int processorsProcessors
    Boolean profilingProfiling
    String? flagsFlags
  }
  command <<<
    groot align \
      ~{flagsFlags} \
      ~{if defined(contContThresh) then ("--contThresh " +  '"' + contContThresh + '"') else ""} \
      ~{true="--fasta" false="" fastFastA} \
      ~{if defined(fastFastQ) then ("--fastq " +  '"' + fastFastQ + '"') else ""} \
      ~{if defined(graphGraphDir) then ("--graphDir " +  '"' + graphGraphDir + '"') else ""} \
      ~{if defined(minkMinkMercoV) then ("--minKmerCov " +  '"' + minkMinkMercoV + '"') else ""} \
      ~{if defined(indexIndexDir) then ("--indexDir " +  '"' + indexIndexDir + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{if defined(processorsProcessors) then ("--processors " +  '"' + processorsProcessors + '"') else ""} \
      ~{true="--profiling" false="" profilingProfiling}
  >>>
}