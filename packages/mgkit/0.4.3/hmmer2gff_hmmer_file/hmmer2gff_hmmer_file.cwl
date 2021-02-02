class: CommandLineTool
id: hmmer2gff_hmmer_file.cwl
inputs:
- id: in_db
  doc: ''
  type: string
  inputBinding:
    prefix: -db
- id: in_c
  doc: ''
  type: boolean
  inputBinding:
    prefix: -c
- id: in_d
  doc: ''
  type: boolean
  inputBinding:
    prefix: -d
- id: in_t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: in_o
  doc: ''
  type: boolean
  inputBinding:
    prefix: -o
- id: in_hmmer_two_gff
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hmmer2gff
- hmmer_file
