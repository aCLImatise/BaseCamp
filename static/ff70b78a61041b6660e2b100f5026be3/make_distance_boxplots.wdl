version 1.0

task MakeDistanceBoxplots.py {
  input {
    String mappingMappingFp
    String outputOutputDir
    String distanceDistanceMatrixFp
    String fieldsFields
  }
  command <<<
    make_distance_boxplots.py \
      ~{if defined(mappingMappingFp) then ("--mapping_fp " +  '"' + mappingMappingFp + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(distanceDistanceMatrixFp) then ("--distance_matrix_fp " +  '"' + distanceDistanceMatrixFp + '"') else ""} \
      ~{if defined(fieldsFields) then ("--fields " +  '"' + fieldsFields + '"') else ""}
  >>>
}