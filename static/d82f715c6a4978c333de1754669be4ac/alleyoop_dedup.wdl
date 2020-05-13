version 1.0

task AlleyoopDedup {
  input {
    String outputOutputDir
    String tcTcMutations
    String threadsThreads
    String? bamBam
  }
  command <<<
    alleyoop dedup \
      ~{bamBam} \
      ~{if defined(outputOutputDir) then ("--outputDir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(tcTcMutations) then ("--tcMutations " +  '"' + tcTcMutations + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}