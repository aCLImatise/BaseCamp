class: CommandLineTool
id: convertOrganismID.pl_file_current organsism.cwl
inputs:
- id: in_new_organism
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_id_type
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- convertOrganismID.pl
- file
- current organsism
