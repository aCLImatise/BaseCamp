class: CommandLineTool
id: drive_push.cwl
inputs:
- id: in_coerced_mime
  doc: the mimeType you are trying to coerce this file to be
  type: File?
  inputBinding:
    prefix: -coerced-mime
- id: in_convert
  doc: toggles conversion of the file to its appropriate Google Doc format
  type: boolean?
  inputBinding:
    prefix: -convert
- id: in_depth
  doc: max traversal depth (default -1)
  type: long?
  inputBinding:
    prefix: -depth
- id: in_destination
  doc: specify the final destination of the contents of an operation
  type: string?
  inputBinding:
    prefix: -destination
- id: in_directories
  doc: push only directories
  type: boolean?
  inputBinding:
    prefix: -directories
- id: in_encryption_password
  doc: encryption password
  type: string?
  inputBinding:
    prefix: -encryption-password
- id: in_exclude_ops
  doc: exclude operations
  type: string?
  inputBinding:
    prefix: -exclude-ops
- id: in_files
  doc: push only files
  type: boolean?
  inputBinding:
    prefix: -files
- id: in_fix_clashes
  doc: fix clashes by renaming or trashing files
  type: boolean?
  inputBinding:
    prefix: -fix-clashes
- id: in_force
  doc: forces a push even if no changes present
  type: boolean?
  inputBinding:
    prefix: -force
- id: in_ignore_checksum
  doc: avoids computation of checksums as a final check.
  type: boolean?
  inputBinding:
    prefix: -ignore-checksum
- id: in_ignore_conflict
  doc: turns off the conflict resolution safety
  type: boolean?
  inputBinding:
    prefix: -ignore-conflict
- id: in_ignore_name_clashes
  doc: ignore name clashes
  type: boolean?
  inputBinding:
    prefix: -ignore-name-clashes
- id: in_allows_pushing_mounted
  doc: allows pushing of mounted paths
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_no_clobber
  doc: prevents overwriting of old content
  type: boolean?
  inputBinding:
    prefix: -no-clobber
- id: in_no_prompt
  doc: shows no prompt before applying the push action
  type: boolean?
  inputBinding:
    prefix: -no-prompt
- id: in_ocr
  doc: if true, attempt OCR on gif, jpg, pdf and png uploads
  type: boolean?
  inputBinding:
    prefix: -ocr
- id: in_piped
  doc: get content in from standard input (stdin)
  type: boolean?
  inputBinding:
    prefix: -piped
- id: in_quiet
  doc: if set, do not log anything but errors
  type: boolean?
  inputBinding:
    prefix: -quiet
- id: in_recursive
  doc: performs the push action recursively (default true)
  type: boolean?
  inputBinding:
    prefix: -recursive
- id: in_retry_count
  doc: max number of retries for exponential backoff (default 20)
  type: long?
  inputBinding:
    prefix: -retry-count
- id: in_skip_mime
  doc: skip elements with mimeTypes derived from these extensions
  type: string?
  inputBinding:
    prefix: -skip-mime
- id: in_verbose
  doc: "show step by step information verbosely\n"
  type: boolean?
  inputBinding:
    prefix: -verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- drive
- push
