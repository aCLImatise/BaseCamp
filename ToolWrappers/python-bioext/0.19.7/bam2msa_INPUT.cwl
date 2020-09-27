class: CommandLineTool
id: bam2msa_INPUT.cwl
inputs:
- id: in_r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: in_output
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
- bam2msa
- INPUT
