version 1.0

task SampleSheetTotable {
  input {
    File path
  }
  command <<<
    sample-sheet totable \
      ~{path}
  >>>
  parameter_meta {
    path: ""
  }
}