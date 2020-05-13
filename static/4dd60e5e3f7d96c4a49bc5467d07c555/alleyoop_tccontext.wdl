version 1.0

task AlleyoopTccontext {
  input {
    String outputOutputDir
    String referenceReference
    String minMinBaseQuality
    String threadsThreads
    String? bamBam
  }
  command <<<
    alleyoop tccontext \
      ~{bamBam} \
      ~{if defined(outputOutputDir) then ("--outputDir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(minMinBaseQuality) then ("--min-basequality " +  '"' + minMinBaseQuality + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}