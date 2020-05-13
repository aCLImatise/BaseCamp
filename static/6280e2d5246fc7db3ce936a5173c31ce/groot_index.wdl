version 1.0

task GrootIndex {
  input {
    Int kmKmErSize
    Int maxMaxK
    String msaMsaDir
    Int numNumPart
    Int sketchSketchSize
    Int windowWindowSize
    String indexIndexDir
    String logLog
    Int processorsProcessors
    Boolean profilingProfiling
    String? flagsFlags
  }
  command <<<
    groot index \
      ~{flagsFlags} \
      ~{if defined(kmKmErSize) then ("--kmerSize " +  '"' + kmKmErSize + '"') else ""} \
      ~{if defined(maxMaxK) then ("--maxK " +  '"' + maxMaxK + '"') else ""} \
      ~{if defined(msaMsaDir) then ("--msaDir " +  '"' + msaMsaDir + '"') else ""} \
      ~{if defined(numNumPart) then ("--numPart " +  '"' + numNumPart + '"') else ""} \
      ~{if defined(sketchSketchSize) then ("--sketchSize " +  '"' + sketchSketchSize + '"') else ""} \
      ~{if defined(windowWindowSize) then ("--windowSize " +  '"' + windowWindowSize + '"') else ""} \
      ~{if defined(indexIndexDir) then ("--indexDir " +  '"' + indexIndexDir + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{if defined(processorsProcessors) then ("--processors " +  '"' + processorsProcessors + '"') else ""} \
      ~{true="--profiling" false="" profilingProfiling}
  >>>
}