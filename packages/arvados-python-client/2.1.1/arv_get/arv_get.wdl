version 1.0

task Arvget {
  input {
    Int? retries
    Boolean? progress
    Boolean? no_progress
    Boolean? batch_progress
    File? hash
    Boolean? md_five_sum
    Boolean? retrieve_files_specified
    Boolean? overwrite_existing_files
    Boolean? once_verbose_mode
    Boolean? skip_existing
    Boolean? strip_manifest
    String locator
    String prefix_dot
    String stdout_dot
    String keep_dot
  }
  command <<<
    arv_get \
      ~{locator} \
      ~{prefix_dot} \
      ~{stdout_dot} \
      ~{keep_dot} \
      ~{if defined(retries) then ("--retries " +  '"' + retries + '"') else ""} \
      ~{if (progress) then "--progress" else ""} \
      ~{if (no_progress) then "--no-progress" else ""} \
      ~{if (batch_progress) then "--batch-progress" else ""} \
      ~{if defined(hash) then ("--hash " +  '"' + hash + '"') else ""} \
      ~{if (md_five_sum) then "--md5sum" else ""} \
      ~{if (retrieve_files_specified) then "-r" else ""} \
      ~{if (overwrite_existing_files) then "-f" else ""} \
      ~{if (once_verbose_mode) then "-v" else ""} \
      ~{if (skip_existing) then "--skip-existing" else ""} \
      ~{if (strip_manifest) then "--strip-manifest" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/arvados-python-client:2.1.1--py_0"
  }
  parameter_meta {
    retries: "Maximum number of times to retry server requests that\\nencounter temporary failures (e.g., server down). Default\\n3."
    progress: "Display human-readable progress on stderr (bytes and, if\\npossible, percentage of total data size). This is the\\ndefault behavior when it is not expected to interfere\\nwith the output: specifically, stderr is a tty _and_\\neither stdout is not a tty, or output is being written to\\nnamed files rather than stdout."
    no_progress: "Do not display human-readable progress on stderr."
    batch_progress: "Display machine-readable progress on stderr (bytes and,\\nif known, total data size)."
    hash: "Display the hash of each file as it is read from Keep,\\nusing the given hash algorithm. Supported algorithms\\ninclude md5, sha1, sha224, sha256, sha384, and sha512."
    md_five_sum: "Display the MD5 hash of each file as it is read from"
    retrieve_files_specified: "Retrieve all files in the specified collection/prefix.\\nThis is the default behavior if the \\\"locator\\\" argument\\nends with a forward slash."
    overwrite_existing_files: "Overwrite existing files while writing. The default\\nbehavior is to refuse to write *anything* if any of the\\noutput files already exist. As a special case, -f is not\\nneeded to write to stdout."
    once_verbose_mode: "Once for verbose mode, twice for debug mode."
    skip_existing: "Skip files that already exist. The default behavior is to\\nrefuse to write *anything* if any files exist that would\\nhave to be overwritten. This option causes even devices,\\nsockets, and fifos to be skipped."
    strip_manifest: "When getting a collection manifest, strip its access\\ntokens before writing it.\\n"
    locator: "Collection locator, optionally with a file path or"
    prefix_dot: "destination        Local file or directory where the data is to be written."
    stdout_dot: "optional arguments:"
    keep_dot: "-n                 Do not write any data -- just read from Keep, and report"
  }
  output {
    File out_stdout = stdout()
  }
}