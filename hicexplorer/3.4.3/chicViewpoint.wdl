version 1.0

task ChicViewpoint {
  input {
    Array[String]+ matricesMatrices
    String rangeRange
    String referenceReferencePoints
    String backgroundBackgroundModelFile
    String threadsThreads
    String averageAverageContactBin
    Float decimalDecimalPlaces
    String writeWriteFilenamesToFile
    String fixateFixateRange
    Boolean allAllViewpointsList
    String outputOutputFolder
  }
  command <<<
    chicViewpoint \
      ~{if defined(matricesMatrices) then ("--matrices " +  '"' + matricesMatrices + '"') else ""} \
      ~{if defined(rangeRange) then ("--range " +  '"' + rangeRange + '"') else ""} \
      ~{if defined(referenceReferencePoints) then ("--referencePoints " +  '"' + referenceReferencePoints + '"') else ""} \
      ~{if defined(backgroundBackgroundModelFile) then ("--backgroundModelFile " +  '"' + backgroundBackgroundModelFile + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(averageAverageContactBin) then ("--averageContactBin " +  '"' + averageAverageContactBin + '"') else ""} \
      ~{if defined(decimalDecimalPlaces) then ("--decimalPlaces " +  '"' + decimalDecimalPlaces + '"') else ""} \
      ~{if defined(writeWriteFilenamesToFile) then ("--writeFileNamesToFile " +  '"' + writeWriteFilenamesToFile + '"') else ""} \
      ~{if defined(fixateFixateRange) then ("--fixateRange " +  '"' + fixateFixateRange + '"') else ""} \
      ~{true="--allViewpointsList" false="" allAllViewpointsList} \
      ~{if defined(outputOutputFolder) then ("--outputFolder " +  '"' + outputOutputFolder + '"') else ""}
  >>>
}