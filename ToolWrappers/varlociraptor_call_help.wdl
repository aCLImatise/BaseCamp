version 1.0

task VarlociraptorCallHelp {
  input {
    String for
    String more
    String information
    String try
  }
  command <<<
    varlociraptor call help \
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