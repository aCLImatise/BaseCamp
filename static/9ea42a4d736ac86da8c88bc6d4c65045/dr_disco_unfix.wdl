version 1.0

task DrDiscoUnfix {
  input {
    File tempTempDir
    String? optionsOptions
    String? inputInputAlignmentFile
    String? outputOutputAlignmentFile
  }
  command <<<
    dr-disco unfix \
      ~{optionsOptions} \
      ~{if defined(tempTempDir) then ("--temp-dir " +  '"' + tempTempDir + '"') else ""} \
      ~{inputInputAlignmentFile} \
      ~{outputOutputAlignmentFile}
  >>>
}