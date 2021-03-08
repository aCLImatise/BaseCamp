class: CommandLineTool
id: arv_get.cwl
inputs:
- id: in_retries
  doc: "Maximum number of times to retry server requests that\nencounter temporary\
    \ failures (e.g., server down). Default\n3."
  type: long?
  inputBinding:
    prefix: --retries
- id: in_progress
  doc: "Display human-readable progress on stderr (bytes and, if\npossible, percentage\
    \ of total data size). This is the\ndefault behavior when it is not expected to\
    \ interfere\nwith the output: specifically, stderr is a tty _and_\neither stdout\
    \ is not a tty, or output is being written to\nnamed files rather than stdout."
  type: boolean?
  inputBinding:
    prefix: --progress
- id: in_no_progress
  doc: Do not display human-readable progress on stderr.
  type: boolean?
  inputBinding:
    prefix: --no-progress
- id: in_batch_progress
  doc: "Display machine-readable progress on stderr (bytes and,\nif known, total data\
    \ size)."
  type: boolean?
  inputBinding:
    prefix: --batch-progress
- id: in_hash
  doc: "Display the hash of each file as it is read from Keep,\nusing the given hash\
    \ algorithm. Supported algorithms\ninclude md5, sha1, sha224, sha256, sha384,\
    \ and sha512."
  type: File?
  inputBinding:
    prefix: --hash
- id: in_md_five_sum
  doc: Display the MD5 hash of each file as it is read from
  type: boolean?
  inputBinding:
    prefix: --md5sum
- id: in_retrieve_files_specified
  doc: "Retrieve all files in the specified collection/prefix.\nThis is the default\
    \ behavior if the \"locator\" argument\nends with a forward slash."
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_overwrite_existing_files
  doc: "Overwrite existing files while writing. The default\nbehavior is to refuse\
    \ to write *anything* if any of the\noutput files already exist. As a special\
    \ case, -f is not\nneeded to write to stdout."
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_once_verbose_mode
  doc: Once for verbose mode, twice for debug mode.
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_skip_existing
  doc: "Skip files that already exist. The default behavior is to\nrefuse to write\
    \ *anything* if any files exist that would\nhave to be overwritten. This option\
    \ causes even devices,\nsockets, and fifos to be skipped."
  type: boolean?
  inputBinding:
    prefix: --skip-existing
- id: in_strip_manifest
  doc: "When getting a collection manifest, strip its access\ntokens before writing\
    \ it.\n"
  type: boolean?
  inputBinding:
    prefix: --strip-manifest
- id: in_locator
  doc: Collection locator, optionally with a file path or
  type: string
  inputBinding:
    position: 0
- id: in_prefix_dot
  doc: destination        Local file or directory where the data is to be written.
  type: string
  inputBinding:
    position: 1
- id: in_stdout_dot
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 0
- id: in_keep_dot
  doc: -n                 Do not write any data -- just read from Keep, and report
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/arvados-python-client:2.1.2--py_0
cwlVersion: v1.1
baseCommand:
- arv-get
