version 1.0

task ConvertToEBD.pyOutputFileOutputFileOutputFile {
  input {
    String? inputInputFile
    String? outputOutputFile
  }
  command <<<
    convertToEBD.py outputFile outputFile outputFile \
      ~{inputInputFile} \
      ~{outputOutputFile}
  >>>
}