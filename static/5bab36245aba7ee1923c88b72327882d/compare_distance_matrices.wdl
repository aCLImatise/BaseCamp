version 1.0

task CompareDistanceMatrices.py {
  input {
    String methodMethod
    String inputInputDms
    String outputOutputDir
  }
  command <<<
    compare_distance_matrices.py \
      ~{if defined(methodMethod) then ("--method " +  '"' + methodMethod + '"') else ""} \
      ~{if defined(inputInputDms) then ("--input_dms " +  '"' + inputInputDms + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""}
  >>>
}