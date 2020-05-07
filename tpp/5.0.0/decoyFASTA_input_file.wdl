version 1.0

task DecoyFASTAInputFile {
  input {
    String? outputOutputFile
    String? filterFilterFile
  }
  command <<<
    decoyFASTA input_file \
      ~{outputOutputFile} \
      ~{filterFilterFile}
  >>>
}