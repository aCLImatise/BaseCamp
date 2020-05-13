version 1.0

task MerfishtoolsExp {
  input {
    String estimateEstimate
    String statsStats
    Int seedSeed
    Float p0P0
    Float p1P1
    String cellsCells
    Boolean pmPmFWindowWidth
    Int threadsThreads
    String? optionsOptions
    String? codebookCodebookTsv
    String? readoutsReadouts
  }
  command <<<
    merfishtools exp \
      ~{optionsOptions} \
      ~{if defined(estimateEstimate) then ("--estimate " +  '"' + estimateEstimate + '"') else ""} \
      ~{if defined(statsStats) then ("--stats " +  '"' + statsStats + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(p0P0) then ("--p0 " +  '"' + p0P0 + '"') else ""} \
      ~{if defined(p1P1) then ("--p1 " +  '"' + p1P1 + '"') else ""} \
      ~{if defined(cellsCells) then ("--cells " +  '"' + cellsCells + '"') else ""} \
      ~{true="--pmf-window-width" false="" pmPmFWindowWidth} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{codebookCodebookTsv} \
      ~{readoutsReadouts}
  >>>
}