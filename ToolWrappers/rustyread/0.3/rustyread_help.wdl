version 1.0

task RustyreadHelp {
  input {
    String for
    String more
    String information
    String try
  }
  command <<<
    rustyread help \
      ~{for} \
      ~{more} \
      ~{information} \
      ~{try}
  >>>
  runtime {
    docker: "quay.io/biocontainers/rustyread:0.3--h82fb495_0"
  }
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