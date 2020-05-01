version 1.0

task ChicDifferentialTest {
  input {
    Array[Int]+ interactionInteractionFile
    String alphaAlpha
    Int interactionInteractionFileFolder
    String outputOutputFolder
    String statisticStatisticTest
    Boolean batchBatchMode
    String threadsThreads
    String rejectedRejectedFilenamesToFile
  }
  command <<<
    chicDifferentialTest \
      ~{if defined(interactionInteractionFile) then ("--interactionFile " +  '"' + interactionInteractionFile + '"') else ""} \
      ~{if defined(alphaAlpha) then ("--alpha " +  '"' + alphaAlpha + '"') else ""} \
      ~{if defined(interactionInteractionFileFolder) then ("--interactionFileFolder " +  '"' + interactionInteractionFileFolder + '"') else ""} \
      ~{if defined(outputOutputFolder) then ("--outputFolder " +  '"' + outputOutputFolder + '"') else ""} \
      ~{if defined(statisticStatisticTest) then ("--statisticTest " +  '"' + statisticStatisticTest + '"') else ""} \
      ~{true="--batchMode" false="" batchBatchMode} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(rejectedRejectedFilenamesToFile) then ("--rejectedFileNamesToFile " +  '"' + rejectedRejectedFilenamesToFile + '"') else ""}
  >>>
}