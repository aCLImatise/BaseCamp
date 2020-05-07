version 1.0

task SampleSheetTotablePATH {
  input {
    String? optionsOptions
    File? pathPath
  }
  command <<<
    sample-sheet totable PATH \
      ~{optionsOptions} \
      ~{pathPath}
  >>>
}