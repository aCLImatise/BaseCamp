version 1.0

task HulkSketch {
  input {
    String fastFastQ
    Boolean fastFastA
    String windowWindowSize
    String intervalInterval
    String sketchSketchSize
    Float decayDecayRatio
    Boolean streamStream
    String bannerBannerLabel
    Boolean kKHf
    Boolean kmvKmv
    String kmKmErSize
    String logLog
    String outfileOutfile
    Int processorsProcessors
    Boolean profilingProfiling
    String? flagsFlags
  }
  command <<<
    hulk sketch \
      ~{flagsFlags} \
      ~{if defined(fastFastQ) then ("--fastq " +  '"' + fastFastQ + '"') else ""} \
      ~{true="--fasta" false="" fastFastA} \
      ~{if defined(windowWindowSize) then ("--windowSize " +  '"' + windowWindowSize + '"') else ""} \
      ~{if defined(intervalInterval) then ("--interval " +  '"' + intervalInterval + '"') else ""} \
      ~{if defined(sketchSketchSize) then ("--sketchSize " +  '"' + sketchSketchSize + '"') else ""} \
      ~{if defined(decayDecayRatio) then ("--decayRatio " +  '"' + decayDecayRatio + '"') else ""} \
      ~{true="--stream" false="" streamStream} \
      ~{if defined(bannerBannerLabel) then ("--bannerLabel " +  '"' + bannerBannerLabel + '"') else ""} \
      ~{true="--khf" false="" kKHf} \
      ~{true="--kmv" false="" kmvKmv} \
      ~{if defined(kmKmErSize) then ("--kmerSize " +  '"' + kmKmErSize + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{if defined(outfileOutfile) then ("--outFile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(processorsProcessors) then ("--processors " +  '"' + processorsProcessors + '"') else ""} \
      ~{true="--profiling" false="" profilingProfiling}
  >>>
}