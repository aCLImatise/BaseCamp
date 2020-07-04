version 1.0

task ArvGet {
  input {
    String? retries
    Boolean? progress
    Boolean? no_progress
    Boolean? batch_progress
    String? hash
    Boolean? md_five_sum
    Boolean? write_data_
    Boolean? retrieve_files_specified
    Boolean? overwrite_existing_files
    Boolean? verbose_mode_twice
    Boolean? skip_existing
    Boolean? strip_manifest
    String locator
    String destination
  }
  command <<<
    arv-get \
      ~{locator} \
      ~{destination} \
      ~{if defined(retries) then ("--retries " +  '"' + retries + '"') else ""} \
      ~{true="--progress" false="" progress} \
      ~{true="--no-progress" false="" no_progress} \
      ~{true="--batch-progress" false="" batch_progress} \
      ~{if defined(hash) then ("--hash " +  '"' + hash + '"') else ""} \
      ~{true="--md5sum" false="" md_five_sum} \
      ~{true="-n" false="" write_data_} \
      ~{true="-r" false="" retrieve_files_specified} \
      ~{true="-f" false="" overwrite_existing_files} \
      ~{true="-v" false="" verbose_mode_twice} \
      ~{true="--skip-existing" false="" skip_existing} \
      ~{true="--strip-manifest" false="" strip_manifest}
  >>>
  parameter_meta {
    retries: "Maximum number of times to retry server requests that encounter temporary failures (e.g., server down). Default 3."
    progress: "Display human-readable progress on stderr (bytes and, if possible, percentage of total data size). This is the default behavior when it is not expected to interfere with the output: specifically, stderr is a tty _and_ either stdout is not a tty, or output is being written to named files rather than stdout."
    no_progress: "Do not display human-readable progress on stderr."
    batch_progress: "Display machine-readable progress on stderr (bytes and, if known, total data size)."
    hash: "Display the hash of each file as it is read from Keep, using the given hash algorithm. Supported algorithms include md5, sha1, sha224, sha256, sha384, and sha512."
    md_five_sum: "Display the MD5 hash of each file as it is read from Keep."
    write_data_: "Do not write any data -- just read from Keep, and report md5sums if requested."
    retrieve_files_specified: "Retrieve all files in the specified collection/prefix. This is the default behavior if the \"locator\" argument ends with a forward slash."
    overwrite_existing_files: "Overwrite existing files while writing. The default behavior is to refuse to write *anything* if any of the output files already exist. As a special case, -f is not needed to write to stdout."
    verbose_mode_twice: "Once for verbose mode, twice for debug mode."
    skip_existing: "Skip files that already exist. The default behavior is to refuse to write *anything* if any files exist that would have to be overwritten. This option causes even devices, sockets, and fifos to be skipped."
    strip_manifest: "When getting a collection manifest, strip its access tokens before writing it."
    locator: "Collection locator, optionally with a file path or prefix."
    destination: "Local file or directory where the data is to be written. Default: stdout."
  }
}