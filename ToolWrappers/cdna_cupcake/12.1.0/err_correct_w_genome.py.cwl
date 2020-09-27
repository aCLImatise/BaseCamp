class: CommandLineTool
id: err_correct_w_genome.py.cwl
inputs:
- id: in_generate
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_sequences
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_using
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_genome
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_bases
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_and
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_sam
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_alignment
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 8
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- err_correct_w_genome.py
