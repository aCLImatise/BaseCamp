class: CommandLineTool
id: drive_pull.cwl
inputs:
- id: hidden
  doc: allows pulling of hidden paths
  type: boolean
  inputBinding:
    prefix: -hidden
- id: id
  doc: pull by id instead of path
  type: boolean
  inputBinding:
    prefix: -id
- id: ignore_checksum
  doc: avoids computation of checksums as a final check.
  type: boolean
  inputBinding:
    prefix: -ignore-checksum
- id: ignore_conflict
  doc: turns off the conflict resolution safety
  type: boolean
  inputBinding:
    prefix: -ignore-conflict
- id: ignore_name_clashes
  doc: ignore name clashes
  type: boolean
  inputBinding:
    prefix: -ignore-name-clashes
- id: matches
  doc: search by prefix
  type: boolean
  inputBinding:
    prefix: -matches
- id: no_clobber
  doc: prevents overwriting of old content
  type: boolean
  inputBinding:
    prefix: -no-clobber
- id: no_prompt
  doc: shows no prompt before applying the pull action
  type: boolean
  inputBinding:
    prefix: -no-prompt
- id: piped
  doc: get content in from standard input (stdin)
  type: boolean
  inputBinding:
    prefix: -piped
- id: quiet
  doc: if set, do not log anything but errors
  type: boolean
  inputBinding:
    prefix: -quiet
- id: recursive
  doc: performs the pull action recursively (default true)
  type: boolean
  inputBinding:
    prefix: -recursive
- id: retry_count
  doc: max number of retries for exponential backoff (default 20)
  type: long
  inputBinding:
    prefix: -retry-count
- id: same_exports_dir
  doc: exports are put in the same directory
  type: boolean
  inputBinding:
    prefix: -same-exports-dir
- id: skip_mime
  doc: skip elements with mimeTypes derived from these extensions
  type: string
  inputBinding:
    prefix: -skip-mime
- id: starred
  doc: operate only on starred files
  type: boolean
  inputBinding:
    prefix: -starred
- id: trashed
  doc: pull content in the trash
  type: boolean
  inputBinding:
    prefix: -trashed
- id: verbose
  doc: show step by step information verbosely
  type: boolean
  inputBinding:
    prefix: -verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- drive
- pull
