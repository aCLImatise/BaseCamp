class: CommandLineTool
id: raw_n50.cwl
inputs:
- id: in_contigs_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- raw_n50
