version 1.0

task RgiKmerBuild {
  input {
    String inputInputDirectory
    String cardCard
    String kK
    Boolean skipSkip
    String threadsThreads
    String batchBatchSize
  }
  command <<<
    rgi kmer_build \
      ~{if defined(inputInputDirectory) then ("--input_directory " +  '"' + inputInputDirectory + '"') else ""} \
      ~{if defined(cardCard) then ("--card " +  '"' + cardCard + '"') else ""} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{true="--skip" false="" skipSkip} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(batchBatchSize) then ("--batch_size " +  '"' + batchBatchSize + '"') else ""}
  >>>
}