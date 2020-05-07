version 1.0

task ITol.py {
  input {
    String otuOtuTable
    String mappingMapping
    String inputInputTree
    String outputOutputTre
    String outputOutputItOlTable
    String mapMapCategories
    String analysisAnalysisMetric
    Boolean stabilizeStabilizeVariance
    Boolean keepKeepOtUids
  }
  command <<<
    iTol.py \
      ~{if defined(otuOtuTable) then ("--otu_table " +  '"' + otuOtuTable + '"') else ""} \
      ~{if defined(mappingMapping) then ("--mapping " +  '"' + mappingMapping + '"') else ""} \
      ~{if defined(inputInputTree) then ("--input_tree " +  '"' + inputInputTree + '"') else ""} \
      ~{if defined(outputOutputTre) then ("--output_tre " +  '"' + outputOutputTre + '"') else ""} \
      ~{if defined(outputOutputItOlTable) then ("--output_itol_table " +  '"' + outputOutputItOlTable + '"') else ""} \
      ~{if defined(mapMapCategories) then ("--map_categories " +  '"' + mapMapCategories + '"') else ""} \
      ~{if defined(analysisAnalysisMetric) then ("--analysis_metric " +  '"' + analysisAnalysisMetric + '"') else ""} \
      ~{true="--stabilize_variance" false="" stabilizeStabilizeVariance} \
      ~{true="--keep_otuids" false="" keepKeepOtUids}
  >>>
}