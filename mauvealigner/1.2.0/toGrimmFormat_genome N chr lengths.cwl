class: CommandLineTool
id: toGrimmFormat_genome N chr lengths.cwl
inputs:
- id: mauve_alignment
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: genome_nchr_lengths
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- toGrimmFormat
- genome N chr lengths
