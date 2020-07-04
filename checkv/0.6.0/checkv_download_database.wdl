version 1.0

task CheckvDownloadDatabase {
  input {
    Boolean? quiet
    String destination
  }
  command <<<
    checkv download_database \
      ~{destination} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    quiet: "Suppress logging messages"
    destination: "Directory where the database will be downloaded to."
  }
}