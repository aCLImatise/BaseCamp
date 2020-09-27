version 1.0

task TerminusHelp {
  input {
    String for
    String more
    String information
    String try
  }
  command <<<
    terminus help \
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