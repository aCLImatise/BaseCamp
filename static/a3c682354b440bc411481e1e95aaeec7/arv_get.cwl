class: CommandLineTool
id: arv_get.cwl
inputs:
- id: locator
  doc: Collection locator, optionally with a file path or prefix.
  type: string
  inputBinding:
    position: 0
- id: destination
  doc: 'Local file or directory where the data is to be written. Default: stdout.'
  type: string
  inputBinding:
    position: 1
- id: retries
  doc: Maximum number of times to retry server requests that encounter temporary failures
    (e.g., server down). Default 3.
  type: string
  inputBinding:
    prefix: --retries
- id: progress
  doc: 'Display human-readable progress on stderr (bytes and, if possible, percentage
    of total data size). This is the default behavior when it is not expected to interfere
    with the output: specifically, stderr is a tty _and_ either stdout is not a tty,
    or output is being written to named files rather than stdout.'
  type: boolean
  inputBinding:
    prefix: --progress
- id: no_progress
  doc: Do not display human-readable progress on stderr.
  type: boolean
  inputBinding:
    prefix: --no-progress
- id: batch_progress
  doc: Display machine-readable progress on stderr (bytes and, if known, total data
    size).
  type: boolean
  inputBinding:
    prefix: --batch-progress
- id: hash
  doc: Display the hash of each file as it is read from Keep, using the given hash
    algorithm. Supported algorithms include md5, sha1, sha224, sha256, sha384, and
    sha512.
  type: string
  inputBinding:
    prefix: --hash
- id: md5sum
  doc: Display the MD5 hash of each file as it is read from Keep.
  type: boolean
  inputBinding:
    prefix: --md5sum
- id: n
  doc: Do not write any data -- just read from Keep, and report md5sums if requested.
  type: boolean
  inputBinding:
    prefix: -n
- id: r
  doc: Retrieve all files in the specified collection/prefix. This is the default
    behavior if the "locator" argument ends with a forward slash.
  type: boolean
  inputBinding:
    prefix: -r
- id: f
  doc: Overwrite existing files while writing. The default behavior is to refuse to
    write *anything* if any of the output files already exist. As a special case,
    -f is not needed to write to stdout.
  type: boolean
  inputBinding:
    prefix: -f
- id: v
  doc: Once for verbose mode, twice for debug mode.
  type: boolean
  inputBinding:
    prefix: -v
- id: skip_existing
  doc: Skip files that already exist. The default behavior is to refuse to write *anything*
    if any files exist that would have to be overwritten. This option causes even
    devices, sockets, and fifos to be skipped.
  type: boolean
  inputBinding:
    prefix: --skip-existing
- id: strip_manifest
  doc: When getting a collection manifest, strip its access tokens before writing
    it.
  type: boolean
  inputBinding:
    prefix: --strip-manifest
outputs: []
cwlVersion: v1.1
baseCommand:
- arv-get
