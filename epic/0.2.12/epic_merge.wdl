version 1.0

task EpicMerge {
  input {
    Array[String]+ matrixesMatrixes
    Array[String]+ regionsRegions
    Boolean keepKeepNonEnriched
    Boolean enrichedEnrichedPerFile
    String outputOutput
    String numberNumberCores
  }
  command <<<
    epic-merge \
      ~{if defined(matrixesMatrixes) then ("--matrixes " +  '"' + matrixesMatrixes + '"') else ""} \
      ~{if defined(regionsRegions) then ("--regions " +  '"' + regionsRegions + '"') else ""} \
      ~{true="--keep-nonenriched" false="" keepKeepNonEnriched} \
      ~{true="--enriched-per-file" false="" enrichedEnrichedPerFile} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(numberNumberCores) then ("--number-cores " +  '"' + numberNumberCores + '"') else ""}
  >>>
}