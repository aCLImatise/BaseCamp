version 1.0

task GemBSIndex {
  input {
    String threadsThreads
    String samplingSamplingRate
    Array[File]+ listListDbsnpFiles
  }
  command <<<
    gemBS index \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(samplingSamplingRate) then ("--sampling-rate " +  '"' + samplingSamplingRate + '"') else ""} \
      ~{if defined(listListDbsnpFiles) then ("--list-dbSNP-files " +  '"' + listListDbsnpFiles + '"') else ""}
  >>>
}