class: CommandLineTool
id: DAM2fasta.cwl
inputs:
- id: in_vu
  doc: ''
  type: boolean
  inputBinding:
    prefix: -vU
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- DAM2fasta
