version 1.0

task PpaniniPress {
  input {
    String geneGenePath
    String outputOutput
    Boolean resumeResume
    String threadsThreads
    String scaleScale
    String memoryMemory
  }
  command <<<
    ppanini_press \
      ~{if defined(geneGenePath) then ("--gene-path " +  '"' + geneGenePath + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--resume" false="" resumeResume} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(scaleScale) then ("--scale " +  '"' + scaleScale + '"') else ""} \
      ~{if defined(memoryMemory) then ("--memory " +  '"' + memoryMemory + '"') else ""}
  >>>
}