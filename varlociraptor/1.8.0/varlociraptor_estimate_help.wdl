version 1.0

task VarlociraptorEstimateHelp {
  input {
    String for
    String more
    String information
    String try
  }
  command <<<
    varlociraptor estimate help \
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