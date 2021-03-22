version 1.0

task RefgenieCompareGENOME2 {
  input {
    Boolean? e
    Boolean? skip_read_lock
    String? c
    String ref_genie
    String compare
    Int genome_one
    Int genome_two
  }
  command <<<
    refgenie compare GENOME2 \
      ~{ref_genie} \
      ~{compare} \
      ~{genome_one} \
      ~{genome_two} \
      ~{if (e) then "-e" else ""} \
      ~{if (skip_read_lock) then "--skip-read-lock" else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/refgenie:0.10.0--py_0"
  }
  parameter_meta {
    e: ""
    skip_read_lock: ""
    c: ""
    ref_genie: ""
    compare: ""
    genome_one: ""
    genome_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}