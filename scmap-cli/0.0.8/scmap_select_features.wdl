version 1.0

task ScmapSelectFeatures.R {
  input {
    String inputInputObjectFile
    String nNFeatures
    String outputOutputPlotFile
    String outputOutputObjectFile
  }
  command <<<
    scmap-select-features.R \
      ~{if defined(inputInputObjectFile) then ("--input-object-file " +  '"' + inputInputObjectFile + '"') else ""} \
      ~{if defined(nNFeatures) then ("--n-features " +  '"' + nNFeatures + '"') else ""} \
      ~{if defined(outputOutputPlotFile) then ("--output-plot-file " +  '"' + outputOutputPlotFile + '"') else ""} \
      ~{if defined(outputOutputObjectFile) then ("--output-object-file " +  '"' + outputOutputObjectFile + '"') else ""}
  >>>
}