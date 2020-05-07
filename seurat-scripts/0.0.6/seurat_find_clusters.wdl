version 1.0

task SeuratFindClusters.R {
  input {
    String inputInputObjectFile
    String inputInputFormat
    String outputOutputFormat
    String resolutionResolution
    String algorithmAlgorithm
    String tmpTmpFileLocation
    String modularityModularityFxn
    String methodMethod
    String outputOutputObjectFile
    String outputOutputTextFile
    String graphGraphName
    String nNRandomStarts
    String nNIterations
    Boolean groupGroupSingletons
    String randomRandomSeed
  }
  command <<<
    seurat-find-clusters.R \
      ~{if defined(inputInputObjectFile) then ("--input-object-file " +  '"' + inputInputObjectFile + '"') else ""} \
      ~{if defined(inputInputFormat) then ("--input-format " +  '"' + inputInputFormat + '"') else ""} \
      ~{if defined(outputOutputFormat) then ("--output-format " +  '"' + outputOutputFormat + '"') else ""} \
      ~{if defined(resolutionResolution) then ("--resolution " +  '"' + resolutionResolution + '"') else ""} \
      ~{if defined(algorithmAlgorithm) then ("--algorithm " +  '"' + algorithmAlgorithm + '"') else ""} \
      ~{if defined(tmpTmpFileLocation) then ("--tmp-file-location " +  '"' + tmpTmpFileLocation + '"') else ""} \
      ~{if defined(modularityModularityFxn) then ("--modularity-fxn " +  '"' + modularityModularityFxn + '"') else ""} \
      ~{if defined(methodMethod) then ("--method " +  '"' + methodMethod + '"') else ""} \
      ~{if defined(outputOutputObjectFile) then ("--output-object-file " +  '"' + outputOutputObjectFile + '"') else ""} \
      ~{if defined(outputOutputTextFile) then ("--output-text-file " +  '"' + outputOutputTextFile + '"') else ""} \
      ~{if defined(graphGraphName) then ("--graph-name " +  '"' + graphGraphName + '"') else ""} \
      ~{if defined(nNRandomStarts) then ("--nrandom-starts " +  '"' + nNRandomStarts + '"') else ""} \
      ~{if defined(nNIterations) then ("--n-iterations " +  '"' + nNIterations + '"') else ""} \
      ~{true="--group-singletons" false="" groupGroupSingletons} \
      ~{if defined(randomRandomSeed) then ("--random-seed " +  '"' + randomRandomSeed + '"') else ""}
  >>>
}