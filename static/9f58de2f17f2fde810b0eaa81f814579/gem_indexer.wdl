version 1.0

task GemIndexer {
  input {
    Boolean bisulfiteBisulfiteIndex
    String threadsThreads
  }
  command <<<
    gem-indexer \
      ~{true="--bisulfite-index" false="" bisulfiteBisulfiteIndex} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}