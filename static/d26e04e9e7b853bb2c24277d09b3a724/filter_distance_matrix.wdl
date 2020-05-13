version 1.0

task FilterDistanceMatrix.py {
  input {
    String inputInputDistanceMatrix
    String outputOutputDistanceMatrix
  }
  command <<<
    filter_distance_matrix.py \
      ~{if defined(inputInputDistanceMatrix) then ("--input_distance_matrix " +  '"' + inputInputDistanceMatrix + '"') else ""} \
      ~{if defined(outputOutputDistanceMatrix) then ("--output_distance_matrix " +  '"' + outputOutputDistanceMatrix + '"') else ""}
  >>>
}