class: CommandLineTool
id: mapper.cwl
inputs:
- id: msa_file
  doc: file containing MSA
  type: string
  inputBinding:
    position: 0
- id: v
  doc: Print more information (such as subsequences in references)
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- mapper
