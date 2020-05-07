class: CommandLineTool
id: hmm_assembler.pl.cwl
inputs:
- id: name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: directory_of_files_from_forge
  doc: ''
  type: Directory
  inputBinding:
    position: 1
- id: c
  doc: include GC-AG splice donor model
  type: string
  inputBinding:
    prefix: -c
outputs: []
cwlVersion: v1.1
baseCommand:
- hmm-assembler.pl
