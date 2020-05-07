version 1.0

task DecoyFASTAFilterFile {
  input {
    String? inputInputFile
    String? outputOutputFile
    String? filterFilterFile
  }
  command <<<
    decoyFASTA filter_file \
      ~{inputInputFile} \
      ~{outputOutputFile} \
      ~{filterFilterFile}
  >>>
}