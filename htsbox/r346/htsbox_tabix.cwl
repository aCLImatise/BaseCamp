class: CommandLineTool
id: htsbox_tabix.cwl
inputs:
- id: s
  doc: skip first INT lines [0]
  type: long
  inputBinding:
    prefix: -S
- id: c
  doc: skip lines starting with CHAR [null]
  type: string
  inputBinding:
    prefix: -c
- id: a
  doc: print all records
  type: boolean
  inputBinding:
    prefix: -a
- id: f
  doc: force to overwrite existing index
  type: boolean
  inputBinding:
    prefix: -f
- id: m
  doc: set the minimal interval size to 1<<INT; 0 for the old tabix index [0]
  type: long
  inputBinding:
    prefix: -m
outputs: []
cwlVersion: v1.1
baseCommand:
- htsbox
- tabix
