class: CommandLineTool
id: raw_n50.cwl
inputs:
- id: in_ref_length
  doc: (=0)
  type: long?
  inputBinding:
    prefix: --ref_length
- id: in_contigs_dot_fa
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
- raw_n50
