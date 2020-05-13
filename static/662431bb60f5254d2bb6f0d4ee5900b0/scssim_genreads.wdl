version 1.0

task ScssimGenreads {
  input {
    String inputInput
    Int primersPrimers
    Float gammaGamma
    String modelModel
    String layoutLayout
    Float coverageCoverage
    Int iISize
    Int threadsThreads
    String outputOutput
  }
  command <<<
    scssim genreads \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(primersPrimers) then ("--primers " +  '"' + primersPrimers + '"') else ""} \
      ~{if defined(gammaGamma) then ("--gamma " +  '"' + gammaGamma + '"') else ""} \
      ~{if defined(modelModel) then ("--model " +  '"' + modelModel + '"') else ""} \
      ~{if defined(layoutLayout) then ("--layout " +  '"' + layoutLayout + '"') else ""} \
      ~{if defined(coverageCoverage) then ("--coverage " +  '"' + coverageCoverage + '"') else ""} \
      ~{if defined(iISize) then ("--isize " +  '"' + iISize + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}