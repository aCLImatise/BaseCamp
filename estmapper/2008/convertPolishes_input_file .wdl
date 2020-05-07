version 1.0

task ConvertPolishesInputFile  {
  input {
    String? outputOutputFile
  }
  command <<<
    convertPolishes input_file  \
      ~{outputOutputFile}
  >>>
}