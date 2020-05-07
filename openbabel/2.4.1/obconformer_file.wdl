version 1.0

task ObconformerFile {
  input {
    String? nNSteps
    String? geomGeomSteps
    File? fileFile
  }
  command <<<
    obconformer file \
      ~{nNSteps} \
      ~{geomGeomSteps} \
      ~{fileFile}
  >>>
}