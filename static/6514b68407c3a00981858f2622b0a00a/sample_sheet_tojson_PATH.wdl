version 1.0

task SampleSheetTojsonPATH {
  input {
    String? optionsOptions
    File? pathPath
  }
  command <<<
    sample-sheet tojson PATH \
      ~{optionsOptions} \
      ~{pathPath}
  >>>
}