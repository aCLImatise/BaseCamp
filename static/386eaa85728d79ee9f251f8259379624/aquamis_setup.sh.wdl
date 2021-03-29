version 1.0

task AquamisSetupsh {
  input {
    Boolean? cond_a
    Boolean? databases
    Boolean? test_data
    Boolean? force
    Boolean? keep_downloads
    Boolean? verbose
  }
  command <<<
    aquamis_setup_sh \
      ~{if (cond_a) then "--conda" else ""} \
      ~{if (databases) then "--databases" else ""} \
      ~{if (test_data) then "--test_data" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (keep_downloads) then "--keep_downloads" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/aquamis:1.3.3--0"
  }
  parameter_meta {
    cond_a: "Install the latest version of 'mamba' to the conda base environment and\\ncreate the AQUAMIS environment 'aquamis'"
    databases: "Download databases to ./AQUAMIS/download and extract them in e.g. ./AQUAMIS/reference_db"
    test_data: "Download test data to ./AQUAMIS/download and extract them in ./AQUAMIS/test_data"
    force: "Force overwrite for downloads in /usr/local/opt/aquamis/download"
    keep_downloads: "Do not remove downloads after extraction"
    verbose: "Print script debug info"
  }
  output {
    File out_stdout = stdout()
  }
}