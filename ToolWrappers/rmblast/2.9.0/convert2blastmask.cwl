class: CommandLineTool
id: convert2blastmask.cwl
inputs:
- id: in_masking_algorithm
  doc: '[-version]'
  type: string
  inputBinding:
    prefix: -masking_algorithm
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- convert2blastmask
