class: CommandLineTool
id: drive_index.cwl
inputs:
- id: in_all_ops
  doc: perform all the index related operations
  type: boolean?
  inputBinding:
    prefix: -all-ops
- id: in_exclude_ops
  doc: exclude operations
  type: string?
  inputBinding:
    prefix: -exclude-ops
- id: in_force
  doc: forces a fetch even if no changes present
  type: boolean?
  inputBinding:
    prefix: -force
- id: in_id
  doc: fetch by id instead of path
  type: boolean?
  inputBinding:
    prefix: -id
- id: in_ignore_checksum
  doc: avoids computation of checksums as a final check.
  type: boolean?
  inputBinding:
    prefix: -ignore-checksum
- id: in_ignore_conflict
  doc: turns off the conflict resolution safety (default true)
  type: boolean?
  inputBinding:
    prefix: -ignore-conflict
- id: in_ignore_name_clashes
  doc: ignore name clashes (default true)
  type: boolean?
  inputBinding:
    prefix: -ignore-name-clashes
- id: in_matches
  doc: search by prefix
  type: boolean?
  inputBinding:
    prefix: -matches
- id: in_no_clobber
  doc: prevents overwriting of old content
  type: boolean?
  inputBinding:
    prefix: -no-clobber
- id: in_no_prompt
  doc: shows no prompt before applying the fetch action
  type: boolean?
  inputBinding:
    prefix: -no-prompt
- id: in_prune
  doc: remove stale indices
  type: boolean?
  inputBinding:
    prefix: -prune
- id: in_quiet
  doc: if set, do not log anything but errors
  type: boolean?
  inputBinding:
    prefix: -quiet
- id: in_recursive
  doc: fetch recursively for children (default true)
  type: boolean?
  inputBinding:
    prefix: -recursive
- id: in_skip_mime
  doc: "skip elements with mimeTypes derived from these extensions\n"
  type: string?
  inputBinding:
    prefix: -skip-mime
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- drive
- index
