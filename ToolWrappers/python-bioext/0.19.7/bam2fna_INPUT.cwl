class: CommandLineTool
id: bam2fna_INPUT.cwl
inputs:
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
- bam2fna
- INPUT
