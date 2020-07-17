version 1.0

task VarlociraptorFilterCallsHelp {
  input {
    String for
    String more
    String information
    String try
  }
  command <<<
    varlociraptor filter-calls help \
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
}