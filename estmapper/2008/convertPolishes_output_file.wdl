version 1.0

task ConvertPolishesOutputFile {
  input {
    String? inputInputFile
    String? outputOutputFile
  }
  command <<<
    convertPolishes output_file \
      ~{inputInputFile} \
      ~{outputOutputFile}
  >>>
}