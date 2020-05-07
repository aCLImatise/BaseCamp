version 1.0

task ObconformerNStepsFile {
  input {
    String? geomGeomSteps
    File? fileFile
  }
  command <<<
    obconformer NSteps file \
      ~{geomGeomSteps} \
      ~{fileFile}
  >>>
}