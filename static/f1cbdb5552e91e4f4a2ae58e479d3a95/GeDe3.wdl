version 1.0

task GeDe3 {
  input {
    Boolean? force
    Boolean? verbose
    Boolean? reference_sequence_filename
  }
  command <<<
    GeDe3 \
      ~{if (force) then "--force" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (reference_sequence_filename) then "-r" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/geco3:1.0--h516909a_0"
  }
  parameter_meta {
    force: "force mode. Overwrites old files."
    verbose: "verbose mode (more information)."
    reference_sequence_filename: "[FILE], --reference [FILE]\\nReference sequence filename (\\\"-rm\\\" are trainned here).\\nExample: -r file1.txt."
  }
  output {
    File out_stdout = stdout()
  }
}