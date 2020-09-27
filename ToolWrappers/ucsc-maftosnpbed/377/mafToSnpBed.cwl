class: CommandLineTool
id: mafToSnpBed.cwl
inputs:
- id: in_database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_dot_maf
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_input_do_tgp
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mafToSnpBed
