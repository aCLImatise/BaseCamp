version 1.0

task ChicAggregateStatistic {
  input {
    Array[Int]+ interactionInteractionFile
    Array[String]+ targetTargetFile
    Boolean batchBatchMode
    String threadsThreads
  }
  command <<<
    chicAggregateStatistic \
      ~{if defined(interactionInteractionFile) then ("--interactionFile " +  '"' + interactionInteractionFile + '"') else ""} \
      ~{if defined(targetTargetFile) then ("--targetFile " +  '"' + targetTargetFile + '"') else ""} \
      ~{true="--batchMode" false="" batchBatchMode} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}