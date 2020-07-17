version 1.0

task RbtCollapseReadsToFragmentsHelp {
  input {
    String for
    String more
    String information
    String try
  }
  command <<<
    rbt collapse-reads-to-fragments help \
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