class: CommandLineTool
id: analyzeScaffolds.cwl
inputs:
- id: in_mandatory_path_gkpstore
  doc: mandatory path to the gkpStore
  type: File
  inputBinding:
    prefix: -g
- id: in_version_mandatory_path
  doc: version     mandatory path to the tigStore and version
  type: File
  inputBinding:
    prefix: -t
- id: in_version_optional_path
  doc: version   optional path to a checkpoint and version
  type: File
  inputBinding:
    prefix: -c
- id: in_e
  doc: ''
  type: string
  inputBinding:
    prefix: -E
- id: in_n
  doc: ''
  type: string
  inputBinding:
    prefix: -n
- id: in_s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- analyzeScaffolds
