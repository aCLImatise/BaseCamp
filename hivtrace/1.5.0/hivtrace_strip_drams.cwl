class: CommandLineTool
id: ../../../hivtrace_strip_drams.cwl
inputs:
- id: in_input
  doc: The input FASTA file
  type: File
  inputBinding:
    prefix: --input
- id: in_var_1
  doc: ''
  type: string
  inputBinding:
    prefix: --output
- id: in_d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: in_d
  doc: -d {lewis,wheeler}, --dram {lewis,wheeler}
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hivtrace_strip_drams
