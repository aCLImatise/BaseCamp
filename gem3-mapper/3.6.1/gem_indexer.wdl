version 1.0

task GemIndexer {
  input {
    Boolean? bisulfite_index
    String? threads
  }
  command <<<
    gem-indexer \
      ~{true="--bisulfite-index" false="" bisulfite_index} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    bisulfite_index: "(default=false)"
    threads: "(default=#cores)"
  }
}