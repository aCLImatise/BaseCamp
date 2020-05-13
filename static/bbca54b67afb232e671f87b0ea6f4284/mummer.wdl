version 1.0

task Mummer {
  input {
    String? referenceReferenceFile
    String? queryQueryFiles
  }
  command <<<
    mummer \
      ~{referenceReferenceFile} \
      ~{queryQueryFiles}
  >>>
}