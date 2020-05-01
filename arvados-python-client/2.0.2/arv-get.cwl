#!/usr/bin/env cwl-runner

baseCommand:
- arv-get
class: CommandLineTool
cwlVersion: v1.0
id: arv-get
inputs:
- doc: Collection locator, optionally with a file path or prefix.
  id: locator
  inputBinding:
    position: 0
  type: string
- doc: 'Local file or directory where the data is to be written. Default: stdout.'
  id: destination
  inputBinding:
    position: 1
  type: string
- doc: Maximum number of times to retry server requests that encounter temporary failures
    (e.g., server down). Default 3.
  id: retries
  inputBinding:
    prefix: --retries
  type: string
- doc: 'Display human-readable progress on stderr (bytes and, if possible, percentage
    of total data size). This is the default behavior when it is not expected to interfere
    with the output: specifically, stderr is a tty _and_ either stdout is not a tty,
    or output is being written to named files rather than stdout.'
  id: progress
  inputBinding:
    prefix: --progress
  type: boolean
- doc: Do not display human-readable progress on stderr.
  id: no_progress
  inputBinding:
    prefix: --no-progress
  type: boolean
- doc: Display machine-readable progress on stderr (bytes and, if known, total data
    size).
  id: batch_progress
  inputBinding:
    prefix: --batch-progress
  type: boolean
- doc: Display the hash of each file as it is read from Keep, using the given hash
    algorithm. Supported algorithms include md5, sha1, sha224, sha256, sha384, and
    sha512.
  id: hash
  inputBinding:
    prefix: --hash
  type: string
- doc: Display the MD5 hash of each file as it is read from Keep.
  id: md5sum
  inputBinding:
    prefix: --md5sum
  type: boolean
- doc: Do not write any data -- just read from Keep, and report md5sums if requested.
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: Retrieve all files in the specified collection/prefix. This is the default
    behavior if the "locator" argument ends with a forward slash.
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: Overwrite existing files while writing. The default behavior is to refuse to
    write *anything* if any of the output files already exist. As a special case,
    -f is not needed to write to stdout.
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: Once for verbose mode, twice for debug mode.
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: Skip files that already exist. The default behavior is to refuse to write *anything*
    if any files exist that would have to be overwritten. This option causes even
    devices, sockets, and fifos to be skipped.
  id: skip_existing
  inputBinding:
    prefix: --skip-existing
  type: boolean
- doc: When getting a collection manifest, strip its access tokens before writing
    it.
  id: strip_manifest
  inputBinding:
    prefix: --strip-manifest
  type: boolean
