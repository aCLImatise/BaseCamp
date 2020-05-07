version 1.0

task ReduceSr {
  input {
    Int maximumMaximumSearchDepth
    File outputOutput
  }
  command <<<
    reduce_sr \
      ~{if defined(maximumMaximumSearchDepth) then ("--maximum-search-depth " +  '"' + maximumMaximumSearchDepth + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}