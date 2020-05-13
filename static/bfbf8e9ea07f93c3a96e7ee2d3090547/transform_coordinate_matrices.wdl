version 1.0

task TransformCoordinateMatrices.py {
  input {
    String inputInputFps
    String outputOutputDir
  }
  command <<<
    transform_coordinate_matrices.py \
      ~{if defined(inputInputFps) then ("--input_fps " +  '"' + inputInputFps + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""}
  >>>
}