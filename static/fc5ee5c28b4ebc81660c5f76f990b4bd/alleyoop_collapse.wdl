version 1.0

task AlleyoopCollapse {
  input {
    String outputOutputDir
    String threadsThreads
    String? tTCount
  }
  command <<<
    alleyoop collapse \
      ~{tTCount} \
      ~{if defined(outputOutputDir) then ("--outputDir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}