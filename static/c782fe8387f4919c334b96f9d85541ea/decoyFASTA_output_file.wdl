version 1.0

task DecoyFASTAOutputFile {
  input {
    String? inputInputFile
    String? outputOutputFile
    String? filterFilterFile
  }
  command <<<
    decoyFASTA output_file \
      ~{inputInputFile} \
      ~{outputOutputFile} \
      ~{filterFilterFile}
  >>>
}