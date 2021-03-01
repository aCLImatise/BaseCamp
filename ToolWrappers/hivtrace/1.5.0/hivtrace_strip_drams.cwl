class: CommandLineTool
id: hivtrace_strip_drams.cwl
inputs:
- id: in_input
  doc: The input FASTA file
  type: File?
  inputBinding:
    prefix: --input
- id: in_d
  doc: ''
  type: string?
  inputBinding:
    prefix: -d
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
- id: in_output
  doc: -d {lewis,wheeler}, --dram {lewis,wheeler}
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
- hivtrace_strip_drams
