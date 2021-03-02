version 1.0

task CheckvDownloadDatabase {
  input {
    Boolean? quiet
    String destination
  }
  command <<<
    checkv download_database \
      ~{destination} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/checkv:0.7.0--py_1"
  }
  parameter_meta {
    quiet: "Suppress logging messages"
    destination: "Directory where the database will be downloaded to."
  }
  output {
    File out_stdout = stdout()
  }
}