version 1.0

task UpdateBlastdbpl {
  input {
    Boolean? source
    Boolean? decompress
    Boolean? show_all
    Boolean? blast_db_version
    Boolean? passive
    Boolean? timeout
    Boolean? force
    Boolean? verbose
    Boolean? quiet
    Boolean? num_threads
    Boolean? legacy_exit_code
  }
  command <<<
    update_blastdb_pl \
      ~{if (source) then "--source" else ""} \
      ~{if (decompress) then "--decompress" else ""} \
      ~{if (show_all) then "--showall" else ""} \
      ~{if (blast_db_version) then "--blastdb_version" else ""} \
      ~{if (passive) then "--passive" else ""} \
      ~{if (timeout) then "--timeout" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (num_threads) then "--num_threads" else ""} \
      ~{if (legacy_exit_code) then "--legacy_exit_code" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/blast:2.11.0--pl526he19e7b1_0"
  }
  parameter_meta {
    source: "Location to download BLAST databases from (default: auto-detect\\nclosest location). Supported values: ncbi, aws, or gcp."
    decompress: "Downloads, decompresses the archives in the current working directory,\\nand deletes the downloaded archive to save disk space, while\\npreserving the archive checksum files (default: false)."
    show_all: "Show all available pre-formatted BLAST databases (default: false). The\\noutput of this option lists the database names which should be used\\nwhen requesting downloads or updates using this script.\\nIt accepts the optional arguments: 'tsv' and 'pretty' to produce\\ntab-separated values and a human-readable format respectively. These\\nparameters elicit the display of additional metadata if this is\\navailable to the program. This metadata is displayed in columnar\\nformat; the columns represent:\\nname, description, size in gigabytes, date of last update (YYYY-MM-DD\\nformat)."
    blast_db_version: "Specify which BLAST database version to download (default: 5).\\nSupported values: 4, 5"
    passive: "Use passive FTP, useful when behind a firewall or working in the cloud\\n(default: true). To disable passive FTP, configure this option as\\nfollows: --passive no"
    timeout: "Timeout on connection to NCBI (default: 120 seconds)."
    force: "Force download even if there is a archive already on local directory\\n(default: false)."
    verbose: "Increment verbosity level (default: 1). Repeat this option multiple\\ntimes to increase the verbosity level (maximum 2)."
    quiet: "Produce no output (default: false). Overrides the --verbose option."
    num_threads: "Sets the number of threads to utilize to perform downloads in parallel\\nwhen data comes from the cloud. Defaults to use all available CPUs on\\nthe machine (Linux and macos only)."
    legacy_exit_code: "Enables exit codes from prior to version 581818, BLAST+ 2.10.0\\nrelease, for downloads from NCBI only. This option is meant to be used\\nby legacy applications that rely on this exit codes: 0 for successful\\noperations that result in no downloads, 1 for successful downloads,\\nand 2 for errors."
  }
  output {
    File out_stdout = stdout()
  }
}