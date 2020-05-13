class: CommandLineTool
id: drive_index.cwl
inputs:
- id: hidden
  doc: allows fetching of hidden paths (default true)
  type: boolean
  inputBinding:
    prefix: -hidden
- id: id
  doc: fetch by id instead of path
  type: boolean
  inputBinding:
    prefix: -id
- id: ignore_checksum
  doc: avoids computation of checksums as a final check.
  type: boolean
  inputBinding:
    prefix: -ignore-checksum
- id: ignore_conflict
  doc: turns off the conflict resolution safety (default true)
  type: boolean
  inputBinding:
    prefix: -ignore-conflict
- id: ignore_name_clashes
  doc: ignore name clashes (default true)
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
  doc: shows no prompt before applying the fetch action
  type: boolean
  inputBinding:
    prefix: -no-prompt
- id: prune
  doc: remove stale indices
  type: boolean
  inputBinding:
    prefix: -prune
- id: quiet
  doc: if set, do not log anything but errors
  type: boolean
  inputBinding:
    prefix: -quiet
- id: recursive
  doc: fetch recursively for children (default true)
  type: boolean
  inputBinding:
    prefix: -recursive
- id: skip_mime
  doc: skip elements with mimeTypes derived from these extensions
  type: string
  inputBinding:
    prefix: -skip-mime
outputs: []
cwlVersion: v1.1
baseCommand:
- drive
- index
