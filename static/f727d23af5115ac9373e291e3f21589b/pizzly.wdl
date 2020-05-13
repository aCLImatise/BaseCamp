version 1.0

task Pizzly {
  input {
    String kK
    String alignAlignScore
    String insertInsertSize
    String outputOutput
    String gtfGtf
    String cacheCache
    String fastFastA
    Boolean ignoreIgnoreProtein
  }
  command <<<
    pizzly \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(alignAlignScore) then ("--align-score " +  '"' + alignAlignScore + '"') else ""} \
      ~{if defined(insertInsertSize) then ("--insert-size " +  '"' + insertInsertSize + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(gtfGtf) then ("--gtf " +  '"' + gtfGtf + '"') else ""} \
      ~{if defined(cacheCache) then ("--cache " +  '"' + cacheCache + '"') else ""} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{true="--ignore-protein" false="" ignoreIgnoreProtein}
  >>>
}