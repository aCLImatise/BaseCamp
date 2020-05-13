version 1.0

task Predict.py {
  input {
    String votersVoters
    String? ptPtModels
    String? outOutDir
    String? annotationAnnotationMatrix
  }
  command <<<
    predict.py \
      ~{ptPtModels} \
      ~{if defined(votersVoters) then ("--voters " +  '"' + votersVoters + '"') else ""} \
      ~{outOutDir} \
      ~{annotationAnnotationMatrix}
  >>>
}