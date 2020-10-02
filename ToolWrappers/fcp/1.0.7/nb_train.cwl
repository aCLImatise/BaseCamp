class: CommandLineTool
id: nb_train.cwl
inputs:
- id: in_contact
  doc: Print contact information.
  type: boolean
  inputBinding:
    prefix: --contact
- id: in_desired_oligonucleotide_length
  doc: Desired oligonucleotide length (default = 8).
  type: long
  inputBinding:
    prefix: -n
- id: in_m
  doc: ''
  type: string
  inputBinding:
    prefix: -m
- id: in_s
  doc: ''
  type: File
  inputBinding:
    prefix: -s
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nb-train
