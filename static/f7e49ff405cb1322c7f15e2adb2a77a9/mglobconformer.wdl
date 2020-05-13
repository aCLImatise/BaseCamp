version 1.0

task Mglobconformer {
  input {
    String? obObConformer
    String? nNSteps
    String? geomGeomSteps
    File? fileFile
  }
  command <<<
    mglobconformer \
      ~{obObConformer} \
      ~{nNSteps} \
      ~{geomGeomSteps} \
      ~{fileFile}
  >>>
}