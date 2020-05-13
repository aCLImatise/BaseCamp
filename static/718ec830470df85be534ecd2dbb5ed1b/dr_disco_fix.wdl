version 1.0

task DrDiscoFix {
  input {
    File tempTempDir
    String? optionsOptions
    String? inputInputAlignmentFile
    String? outputOutputAlignmentFile
  }
  command <<<
    dr-disco fix \
      ~{optionsOptions} \
      ~{if defined(tempTempDir) then ("--temp-dir " +  '"' + tempTempDir + '"') else ""} \
      ~{inputInputAlignmentFile} \
      ~{outputOutputAlignmentFile}
  >>>
}