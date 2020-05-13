version 1.0

task SampleSheetTojsonOPTIONS {
  input {
    File? pathPath
  }
  command <<<
    sample-sheet tojson OPTIONS \
      ~{pathPath}
  >>>
}