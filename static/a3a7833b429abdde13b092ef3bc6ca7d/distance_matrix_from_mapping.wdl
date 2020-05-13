version 1.0

task DistanceMatrixFromMapping.py {
  input {
    String inputInputPath
    String columnColumn
  }
  command <<<
    distance_matrix_from_mapping.py \
      ~{if defined(inputInputPath) then ("--input_path " +  '"' + inputInputPath + '"') else ""} \
      ~{if defined(columnColumn) then ("--column " +  '"' + columnColumn + '"') else ""}
  >>>
}