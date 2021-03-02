class: CommandLineTool
id: arv_put.cwl
inputs:
- id: in_normalize
  doc: "Normalize the manifest by re-ordering files and\nstreams after writing data."
  type: boolean?
  inputBinding:
    prefix: --normalize
- id: in_dry_run
  doc: "Don't actually upload files, but only check if any\nfile should be uploaded.\
    \ Exit with code=2 when files\nare pending for upload."
  type: boolean?
  inputBinding:
    prefix: --dry-run
- id: in_as_stream
  doc: Synonym for --stream.
  type: boolean?
  inputBinding:
    prefix: --as-stream
- id: in_stream
  doc: "Store the file content and display the resulting\nmanifest on stdout. Do not\
    \ write the manifest to Keep\nor save a Collection object in Arvados."
  type: boolean?
  inputBinding:
    prefix: --stream
- id: in_as_manifest
  doc: Synonym for --manifest.
  type: boolean?
  inputBinding:
    prefix: --as-manifest
- id: in_in_manifest
  doc: Synonym for --manifest.
  type: boolean?
  inputBinding:
    prefix: --in-manifest
- id: in_manifest
  doc: "Store the file data and resulting manifest in Keep,\nsave a Collection object\
    \ in Arvados, and display the\nmanifest locator (Collection uuid) on stdout. This\
    \ is\nthe default behavior."
  type: boolean?
  inputBinding:
    prefix: --manifest
- id: in_as_raw
  doc: Synonym for --raw.
  type: boolean?
  inputBinding:
    prefix: --as-raw
- id: in_raw
  doc: "Store the file content and display the data block\nlocators on stdout, separated\
    \ by commas, with a\ntrailing newline. Do not store a manifest."
  type: boolean?
  inputBinding:
    prefix: --raw
- id: in_update_collection
  doc: "Update an existing collection identified by the given\nArvados collection\
    \ UUID. All new local files will be\nuploaded."
  type: string?
  inputBinding:
    prefix: --update-collection
- id: in_use_filename
  doc: Synonym for --filename.
  type: File?
  inputBinding:
    prefix: --use-filename
- id: in_filename
  doc: "Use the given filename in the manifest, instead of the\nname of the local\
    \ file. This is useful when \"-\" or\n\"/dev/stdin\" is given as an input file.\
    \ It can be used\nonly if there is exactly one path given and it is not\na directory.\
    \ Implies --manifest."
  type: File?
  inputBinding:
    prefix: --filename
- id: in_portable_data_hash
  doc: "Print the portable data hash instead of the Arvados\nUUID for the collection\
    \ created by the upload."
  type: boolean?
  inputBinding:
    prefix: --portable-data-hash
- id: in_replication
  doc: "Set the replication level for the new collection: how\nmany different physical\
    \ storage devices (e.g., disks)\nshould have a copy of each data block. Default\
    \ is to\nuse the server-provided default (if any) or 2."
  type: long?
  inputBinding:
    prefix: --replication
- id: in_storage_classes
  doc: "Specify comma separated list of storage classes to be\nused when saving data\
    \ to Keep."
  type: string?
  inputBinding:
    prefix: --storage-classes
- id: in_threads
  doc: "Set the number of upload threads to be used. Take into\naccount that using\
    \ lots of threads will increase the\nRAM requirements. Default is to use 2 threads.\
    \ On high\nlatency installations, using a greater number will\nimprove overall\
    \ throughput."
  type: long?
  inputBinding:
    prefix: --threads
- id: in_exclude
  doc: "Exclude files and directories whose names match the\ngiven glob pattern. When\
    \ using a path-like pattern\nlike 'subdir/*.txt', all text files inside 'subdir'\n\
    directory, relative to the provided input dirs will be\nexcluded. When using a\
    \ filename pattern like '*.txt',\nany text file will be excluded no matter where\
    \ it is\nplaced. For the special case of needing to exclude\nonly files or dirs\
    \ directly below the given input\ndirectory, you can use a pattern like\n'./exclude_this.gif'.\
    \ You can specify multiple\npatterns by using this argument more than once."
  type: File?
  inputBinding:
    prefix: --exclude
- id: in_follow_links
  doc: Follow file and directory symlinks (default).
  type: boolean?
  inputBinding:
    prefix: --follow-links
- id: in_no_follow_links
  doc: Do not follow file and directory symlinks.
  type: boolean?
  inputBinding:
    prefix: --no-follow-links
- id: in_trash_at
  doc: ":MM\nSet the trash date of the resulting collection to an\nabsolute date in\
    \ the future. The accepted format is\ndefined by the ISO 8601 standard. Examples:\
    \ 20090103,\n2009-01-03, 20090103T181505, 2009-01-03T18:15:05.\nTimezone information\
    \ can be added. If not, the\nprovided date/time is assumed as being in the local\n\
    system's timezone."
  type: long?
  inputBinding:
    prefix: --trash-at
- id: in_trash_after
  doc: "Set the trash date of the resulting collection to an\namount of days from\
    \ the date/time that the upload\nprocess finishes."
  type: string?
  inputBinding:
    prefix: --trash-after
- id: in_project_uuid
  doc: "Store the collection in the specified project, instead\nof your Home project."
  type: string?
  inputBinding:
    prefix: --project-uuid
- id: in_name
  doc: Save the collection with the specified name.
  type: string?
  inputBinding:
    prefix: --name
- id: in_progress
  doc: "Display human-readable progress on stderr (bytes and,\nif possible, percentage\
    \ of total data size). This is\nthe default behavior when stderr is a tty."
  type: boolean?
  inputBinding:
    prefix: --progress
- id: in_no_progress
  doc: "Do not display human-readable progress on stderr, even\nif stderr is a tty."
  type: boolean?
  inputBinding:
    prefix: --no-progress
- id: in_batch_progress
  doc: "Display machine-readable progress on stderr (bytes\nand, if known, total data\
    \ size)."
  type: boolean?
  inputBinding:
    prefix: --batch-progress
- id: in_silent
  doc: "Do not print any debug messages to console. (Any error\nmessages will still\
    \ be displayed.)"
  type: boolean?
  inputBinding:
    prefix: --silent
- id: in_resume
  doc: "Continue interrupted uploads from cached state\n(default)."
  type: boolean?
  inputBinding:
    prefix: --resume
- id: in_no_resume
  doc: Do not continue interrupted uploads from cached state.
  type: boolean?
  inputBinding:
    prefix: --no-resume
- id: in_cache
  doc: "Save upload state in a cache file for resuming\n(default)."
  type: boolean?
  inputBinding:
    prefix: --cache
- id: in_no_cache
  doc: Do not save upload state in a cache file for resuming.
  type: boolean?
  inputBinding:
    prefix: --no-cache
- id: in_retries
  doc: "Maximum number of times to retry server requests that\nencounter temporary\
    \ failures (e.g., server down).\nDefault 3.\n"
  type: long?
  inputBinding:
    prefix: --retries
- id: in_path
  doc: "Local file or directory. If path is a directory\nreference with a trailing\
    \ slash, then just upload the\ndirectory's contents; otherwise upload the directory\n\
    itself. Default: read from standard input."
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/arvados-python-client:2.1.1--py_0
cwlVersion: v1.1
baseCommand:
- arv-put
