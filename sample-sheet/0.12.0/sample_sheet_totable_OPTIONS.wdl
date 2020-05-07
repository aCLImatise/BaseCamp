version 1.0

task SampleSheetTotableOPTIONS {
  input {
    File? pathPath
  }
  command <<<
    sample-sheet totable OPTIONS \
      ~{pathPath}
  >>>
}