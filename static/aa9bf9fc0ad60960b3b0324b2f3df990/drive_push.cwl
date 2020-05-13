class: CommandLineTool
id: drive_push.cwl
inputs:
- id: hidden
  doc: allows pushing of hidden paths
  type: boolean
  inputBinding:
    prefix: -hidden
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
- id: m
  doc: allows pushing of mounted paths
  type: boolean
  inputBinding:
    prefix: -m
- id: no_clobber
  doc: prevents overwriting of old content
  type: boolean
  inputBinding:
    prefix: -no-clobber
- id: no_prompt
  doc: shows no prompt before applying the push action
  type: boolean
  inputBinding:
    prefix: -no-prompt
- id: ocr
  doc: if true, attempt OCR on gif, jpg, pdf and png uploads
  type: boolean
  inputBinding:
    prefix: -ocr
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
  doc: performs the push action recursively (default true)
  type: boolean
  inputBinding:
    prefix: -recursive
- id: retry_count
  doc: max number of retries for exponential backoff (default 20)
  type: long
  inputBinding:
    prefix: -retry-count
- id: skip_mime
  doc: skip elements with mimeTypes derived from these extensions
  type: string
  inputBinding:
    prefix: -skip-mime
- id: verbose
  doc: show step by step information verbosely
  type: boolean
  inputBinding:
    prefix: -verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- drive
- push
