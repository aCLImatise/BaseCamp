version 1.0

task Arvput {
  input {
    Boolean? normalize
    Boolean? dry_run
    Boolean? as_stream
    Boolean? stream
    Boolean? as_manifest
    Boolean? in_manifest
    Boolean? manifest
    Boolean? as_raw
    Boolean? raw
    String? update_collection
    File? use_filename
    File? filename
    Boolean? portable_data_hash
    Int? replication
    String? storage_classes
    Int? threads
    File? exclude
    Boolean? follow_links
    Boolean? no_follow_links
    Int? trash_at
    String? trash_after
    String? project_uuid
    String? name
    Boolean? progress
    Boolean? no_progress
    Boolean? batch_progress
    Boolean? silent
    Boolean? resume
    Boolean? no_resume
    Boolean? cache
    Boolean? no_cache
    Int? retries
    File path
  }
  command <<<
    arv_put \
      ~{path} \
      ~{if (normalize) then "--normalize" else ""} \
      ~{if (dry_run) then "--dry-run" else ""} \
      ~{if (as_stream) then "--as-stream" else ""} \
      ~{if (stream) then "--stream" else ""} \
      ~{if (as_manifest) then "--as-manifest" else ""} \
      ~{if (in_manifest) then "--in-manifest" else ""} \
      ~{if (manifest) then "--manifest" else ""} \
      ~{if (as_raw) then "--as-raw" else ""} \
      ~{if (raw) then "--raw" else ""} \
      ~{if defined(update_collection) then ("--update-collection " +  '"' + update_collection + '"') else ""} \
      ~{if defined(use_filename) then ("--use-filename " +  '"' + use_filename + '"') else ""} \
      ~{if defined(filename) then ("--filename " +  '"' + filename + '"') else ""} \
      ~{if (portable_data_hash) then "--portable-data-hash" else ""} \
      ~{if defined(replication) then ("--replication " +  '"' + replication + '"') else ""} \
      ~{if defined(storage_classes) then ("--storage-classes " +  '"' + storage_classes + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if (follow_links) then "--follow-links" else ""} \
      ~{if (no_follow_links) then "--no-follow-links" else ""} \
      ~{if defined(trash_at) then ("--trash-at " +  '"' + trash_at + '"') else ""} \
      ~{if defined(trash_after) then ("--trash-after " +  '"' + trash_after + '"') else ""} \
      ~{if defined(project_uuid) then ("--project-uuid " +  '"' + project_uuid + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if (progress) then "--progress" else ""} \
      ~{if (no_progress) then "--no-progress" else ""} \
      ~{if (batch_progress) then "--batch-progress" else ""} \
      ~{if (silent) then "--silent" else ""} \
      ~{if (resume) then "--resume" else ""} \
      ~{if (no_resume) then "--no-resume" else ""} \
      ~{if (cache) then "--cache" else ""} \
      ~{if (no_cache) then "--no-cache" else ""} \
      ~{if defined(retries) then ("--retries " +  '"' + retries + '"') else ""}
  >>>
  parameter_meta {
    normalize: "Normalize the manifest by re-ordering files and\\nstreams after writing data."
    dry_run: "Don't actually upload files, but only check if any\\nfile should be uploaded. Exit with code=2 when files\\nare pending for upload."
    as_stream: "Synonym for --stream."
    stream: "Store the file content and display the resulting\\nmanifest on stdout. Do not write the manifest to Keep\\nor save a Collection object in Arvados."
    as_manifest: "Synonym for --manifest."
    in_manifest: "Synonym for --manifest."
    manifest: "Store the file data and resulting manifest in Keep,\\nsave a Collection object in Arvados, and display the\\nmanifest locator (Collection uuid) on stdout. This is\\nthe default behavior."
    as_raw: "Synonym for --raw."
    raw: "Store the file content and display the data block\\nlocators on stdout, separated by commas, with a\\ntrailing newline. Do not store a manifest."
    update_collection: "Update an existing collection identified by the given\\nArvados collection UUID. All new local files will be\\nuploaded."
    use_filename: "Synonym for --filename."
    filename: "Use the given filename in the manifest, instead of the\\nname of the local file. This is useful when \\\"-\\\" or\\n\\\"/dev/stdin\\\" is given as an input file. It can be used\\nonly if there is exactly one path given and it is not\\na directory. Implies --manifest."
    portable_data_hash: "Print the portable data hash instead of the Arvados\\nUUID for the collection created by the upload."
    replication: "Set the replication level for the new collection: how\\nmany different physical storage devices (e.g., disks)\\nshould have a copy of each data block. Default is to\\nuse the server-provided default (if any) or 2."
    storage_classes: "Specify comma separated list of storage classes to be\\nused when saving data to Keep."
    threads: "Set the number of upload threads to be used. Take into\\naccount that using lots of threads will increase the\\nRAM requirements. Default is to use 2 threads. On high\\nlatency installations, using a greater number will\\nimprove overall throughput."
    exclude: "Exclude files and directories whose names match the\\ngiven glob pattern. When using a path-like pattern\\nlike 'subdir/*.txt', all text files inside 'subdir'\\ndirectory, relative to the provided input dirs will be\\nexcluded. When using a filename pattern like '*.txt',\\nany text file will be excluded no matter where it is\\nplaced. For the special case of needing to exclude\\nonly files or dirs directly below the given input\\ndirectory, you can use a pattern like\\n'./exclude_this.gif'. You can specify multiple\\npatterns by using this argument more than once."
    follow_links: "Follow file and directory symlinks (default)."
    no_follow_links: "Do not follow file and directory symlinks."
    trash_at: ":MM\\nSet the trash date of the resulting collection to an\\nabsolute date in the future. The accepted format is\\ndefined by the ISO 8601 standard. Examples: 20090103,\\n2009-01-03, 20090103T181505, 2009-01-03T18:15:05.\\nTimezone information can be added. If not, the\\nprovided date/time is assumed as being in the local\\nsystem's timezone."
    trash_after: "Set the trash date of the resulting collection to an\\namount of days from the date/time that the upload\\nprocess finishes."
    project_uuid: "Store the collection in the specified project, instead\\nof your Home project."
    name: "Save the collection with the specified name."
    progress: "Display human-readable progress on stderr (bytes and,\\nif possible, percentage of total data size). This is\\nthe default behavior when stderr is a tty."
    no_progress: "Do not display human-readable progress on stderr, even\\nif stderr is a tty."
    batch_progress: "Display machine-readable progress on stderr (bytes\\nand, if known, total data size)."
    silent: "Do not print any debug messages to console. (Any error\\nmessages will still be displayed.)"
    resume: "Continue interrupted uploads from cached state\\n(default)."
    no_resume: "Do not continue interrupted uploads from cached state."
    cache: "Save upload state in a cache file for resuming\\n(default)."
    no_cache: "Do not save upload state in a cache file for resuming."
    retries: "Maximum number of times to retry server requests that\\nencounter temporary failures (e.g., server down).\\nDefault 3.\\n"
    path: "Local file or directory. If path is a directory\\nreference with a trailing slash, then just upload the\\ndirectory's contents; otherwise upload the directory\\nitself. Default: read from standard input."
  }
  output {
    File out_stdout = stdout()
  }
}