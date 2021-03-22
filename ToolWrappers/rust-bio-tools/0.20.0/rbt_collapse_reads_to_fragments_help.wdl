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
  runtime {
    docker: "quay.io/biocontainers/rust-bio-tools:0.20.0--heda7bfa_0"
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