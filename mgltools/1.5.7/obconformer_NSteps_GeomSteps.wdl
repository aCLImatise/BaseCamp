version 1.0

task ObconformerNStepsGeomSteps {
  input {
    File? fileFile
  }
  command <<<
    obconformer NSteps GeomSteps \
      ~{fileFile}
  >>>
}