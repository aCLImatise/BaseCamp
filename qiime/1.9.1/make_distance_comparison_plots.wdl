version 1.0

task MakeDistanceComparisonPlots.py {
  input {
    String mappingMappingFp
    String outputOutputDir
    String distanceDistanceMatrixFp
    String fieldField
    String comparisonComparisonGroups
  }
  command <<<
    make_distance_comparison_plots.py \
      ~{if defined(mappingMappingFp) then ("--mapping_fp " +  '"' + mappingMappingFp + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(distanceDistanceMatrixFp) then ("--distance_matrix_fp " +  '"' + distanceDistanceMatrixFp + '"') else ""} \
      ~{if defined(fieldField) then ("--field " +  '"' + fieldField + '"') else ""} \
      ~{if defined(comparisonComparisonGroups) then ("--comparison_groups " +  '"' + comparisonComparisonGroups + '"') else ""}
  >>>
}