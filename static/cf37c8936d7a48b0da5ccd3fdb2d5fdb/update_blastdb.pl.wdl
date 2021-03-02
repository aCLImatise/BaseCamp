version 1.0

task UpdateBlastdbpl {
  input {
    Boolean? decompress
    Boolean? show_all
    Boolean? blast_db_version
    Boolean? passive
    Boolean? timeout
    Boolean? force
    Boolean? verbose
    Boolean? quiet
    Boolean? num_cores
    String errors_dot
  }
  command <<<
    update_blastdb_pl \
      ~{errors_dot} \
      ~{if (decompress) then "--decompress" else ""} \
      ~{if (show_all) then "--showall" else ""} \
      ~{if (blast_db_version) then "--blastdb_version" else ""} \
      ~{if (passive) then "--passive" else ""} \
      ~{if (timeout) then "--timeout" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (num_cores) then "--num_cores" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/rmblast:2.10.0--h2d02072_0"
  }
  parameter_meta {
    decompress: "Downloads, decompresses the archives in the current working directory,\\nand deletes the downloaded archive to save disk space, while\\npreserving the archive checksum files (default: false)."
    show_all: "Show all available pre-formatted BLAST databases (default: false). The\\noutput of this option lists the database names which should be used\\nwhen requesting downloads or updates using this script.\\nIt accepts the optional arguments: 'tsv' and 'pretty' to produce\\ntab-separated values and a human-readable format respectively. These\\nparameters elicit the display of additional metadata if this is\\navailable to the program. This metadata is displayed in columnar\\nformat; the columns represent:\\nname, description, size in gigabytes, date of last update (YYYY-MM-DD\\nformat)."
    blast_db_version: "Specify which BLAST database version to download (default: 4).\\nSupported values: 4, 5"
    passive: "Use passive FTP, useful when behind a firewall or working in the cloud\\n(default: true). To disable passive FTP, configure this option as\\nfollows: --passive no"
    timeout: "Timeout on connection to NCBI (default: 120 seconds)."
    force: "Force download even if there is a archive already on local directory\\n(default: false)."
    verbose: "Increment verbosity level (default: 1). Repeat this option multiple\\ntimes to increase the verbosity level (maximum 2)."
    quiet: "Produce no output (default: false). Overrides the --verbose option."
    num_cores: "Sets the number of cores to utilize to perform downloads in parallel\\nwhen data comes from GCS. Defaults to all cores (Linux and macos\\nonly)."
    errors_dot: "BUGS"
  }
  output {
    File out_stdout = stdout()
  }
}