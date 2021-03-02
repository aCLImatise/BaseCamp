class: CommandLineTool
id: revScaffold.cwl
inputs:
- id: in_display_compatible_version
  doc: Display the compatible bank version
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_flip_scaffold_eid
  doc: Flip scaffold eid
  type: string?
  inputBinding:
    prefix: -e
- id: in_flip_scaffold_iid
  doc: Flip scaffold iid
  type: string?
  inputBinding:
    prefix: -i
- id: in_flip_scaffolds_eids
  doc: Flip the scaffolds eids listed in file
  type: File?
  inputBinding:
    prefix: -E
- id: in_flip_scaffolds_iids
  doc: Flip the scaffolds iids listed in file
  type: File?
  inputBinding:
    prefix: -I
- id: in_bank_path
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- revScaffold
