version 1.0

task ChicViewpointBackgroundModel {
  input {
    Array[String]+ matricesMatrices
    String referenceReferencePoints
    String averageAverageContactBin
    Boolean truncateTruncateZeros
    String outOutFilename
    String threadsThreads
    String fixateFixateRange
  }
  command <<<
    chicViewpointBackgroundModel \
      ~{if defined(matricesMatrices) then ("--matrices " +  '"' + matricesMatrices + '"') else ""} \
      ~{if defined(referenceReferencePoints) then ("--referencePoints " +  '"' + referenceReferencePoints + '"') else ""} \
      ~{if defined(averageAverageContactBin) then ("--averageContactBin " +  '"' + averageAverageContactBin + '"') else ""} \
      ~{true="--truncateZeros" false="" truncateTruncateZeros} \
      ~{if defined(outOutFilename) then ("--outFileName " +  '"' + outOutFilename + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(fixateFixateRange) then ("--fixateRange " +  '"' + fixateFixateRange + '"') else ""}
  >>>
}