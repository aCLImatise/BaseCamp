class: CommandLineTool
id: drive_diff.cwl
inputs:
- id: in_base_local
  doc: when set uses local as the base other remote will be used as the base (default
    true)
  type: boolean?
  inputBinding:
    prefix: -base-local
- id: in_depth
  doc: max traversal depth (default -1)
  type: long?
  inputBinding:
    prefix: -depth
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
- id: in_quiet
  doc: if set, do not log anything but errors
  type: boolean?
  inputBinding:
    prefix: -quiet
- id: in_recursive
  doc: recursively diff (default true)
  type: boolean?
  inputBinding:
    prefix: -recursive
- id: in_skip_content_check
  doc: skip diffing actual body content, show only name, time, type changes
  type: boolean?
  inputBinding:
    prefix: -skip-content-check
- id: in_unified_diff_default
  doc: unified diff (default true)
  type: boolean?
  inputBinding:
    prefix: -u
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- drive
- diff
