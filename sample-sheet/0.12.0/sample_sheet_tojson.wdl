version 1.0

task SampleSheetTojson {
  input {
    File path
  }
  command <<<
    sample-sheet tojson \
      ~{path}
  >>>
  parameter_meta {
    path: ""
  }
}