version 1.0

task PerbaseHelp {
  input {
    String for
    String more
    String information
    String try
  }
  command <<<
    perbase help \
      ~{for} \
      ~{more} \
      ~{information} \
      ~{try}
  >>>
  runtime {
    docker: "quay.io/biocontainers/perbase:0.6.3--h35a96ae_0"
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