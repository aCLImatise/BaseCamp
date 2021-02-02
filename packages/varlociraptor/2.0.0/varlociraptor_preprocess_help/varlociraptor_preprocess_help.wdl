version 1.0

task VarlociraptorPreprocessHelp {
  input {
    String for
    String more
    String information
    String try
  }
  command <<<
    varlociraptor preprocess help \
      ~{for} \
      ~{more} \
      ~{information} \
      ~{try}
  >>>
  parameter_meta {
    for: ""
    more: ""
    information: ""
    try: ""
  }
  output {
    File out_stdout = stdout()
  }
}