version 1.0

task RbtCollapsereadstofragmentsHelp {
  input {
    String for
    String more
    String information
    String try
  }
  command <<<
    rbt collapse_reads_to_fragments help \
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