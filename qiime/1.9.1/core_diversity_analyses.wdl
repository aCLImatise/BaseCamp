version 1.0

task CoreDiversityAnalyses.py {
  input {
    String inputInputBiomFp
    String outputOutputDir
    String mappingMappingFp
    String samplingSamplingDepth
  }
  command <<<
    core_diversity_analyses.py \
      ~{if defined(inputInputBiomFp) then ("--input_biom_fp " +  '"' + inputInputBiomFp + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(mappingMappingFp) then ("--mapping_fp " +  '"' + mappingMappingFp + '"') else ""} \
      ~{if defined(samplingSamplingDepth) then ("--sampling_depth " +  '"' + samplingSamplingDepth + '"') else ""}
  >>>
}