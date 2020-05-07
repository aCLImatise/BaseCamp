version 1.0

task ObconformerGeomSteps {
  input {
    String? nNSteps
    String? geomGeomSteps
    File? fileFile
  }
  command <<<
    obconformer GeomSteps \
      ~{nNSteps} \
      ~{geomGeomSteps} \
      ~{fileFile}
  >>>
}