class: CommandLineTool
id: gff_check.cwl
inputs:
- id: in_threads
  doc: ''
  type: long?
  inputBinding:
    prefix: -threads
- id: in_seed
  doc: ''
  type: long?
  inputBinding:
    prefix: -seed
- id: in_profile
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -profile
- id: in_no_progress
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -noprogress
- id: in_verbose
  doc: ''
  type: long?
  inputBinding:
    prefix: -verbose
- id: in_qc
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -qc
- id: in_gff
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gff_check
