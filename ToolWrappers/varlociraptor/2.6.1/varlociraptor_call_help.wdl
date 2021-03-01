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
  runtime {
    docker: "quay.io/biocontainers/varlociraptor:2.6.1--hd5fb649_0"
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