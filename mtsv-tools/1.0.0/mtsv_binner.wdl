version 1.0

task MtsvBinner {
  input {
    Boolean vV
    String editsEdits
    String fastFastA
    String indexIndex
    Int minMinSeeds
    String threadsThreads
    String resultsResults
    String seedSeedGap
    String seedSeedSize
  }
  command <<<
    mtsv-binner \
      ~{true="-v" false="" vV} \
      ~{if defined(editsEdits) then ("--edits " +  '"' + editsEdits + '"') else ""} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(indexIndex) then ("--index " +  '"' + indexIndex + '"') else ""} \
      ~{if defined(minMinSeeds) then ("--min-seeds " +  '"' + minMinSeeds + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(resultsResults) then ("--results " +  '"' + resultsResults + '"') else ""} \
      ~{if defined(seedSeedGap) then ("--seed-gap " +  '"' + seedSeedGap + '"') else ""} \
      ~{if defined(seedSeedSize) then ("--seed-size " +  '"' + seedSeedSize + '"') else ""}
  >>>
}