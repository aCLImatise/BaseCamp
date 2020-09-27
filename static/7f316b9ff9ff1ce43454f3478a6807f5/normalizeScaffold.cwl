class: CommandLineTool
id: normalizeScaffold.cwl
inputs:
- id: in_display_compatible_version
  doc: Display the compatible bank version
  type: boolean
  inputBinding:
    prefix: -v
- id: in_just_normalize_eids
  doc: Just normalize the scaffolds eids listed in file
  type: File
  inputBinding:
    prefix: -E
- id: in_just_normalize_iids
  doc: Just normalize the scaffolds iids listed in file
  type: File
  inputBinding:
    prefix: -I
- id: in_just_normalize_eid
  doc: Just normalize the specified scaffold eid
  type: string
  inputBinding:
    prefix: -e
- id: in_just_normalize_iid
  doc: Just normalize the specified scaffold iid
  type: string
  inputBinding:
    prefix: -i
- id: in_bank_path
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- normalizeScaffold
