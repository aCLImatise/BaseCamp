class: CommandLineTool
id: ../../../halSnps.cwl
inputs:
- id: hal_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ref_genome
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: target_genomes
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- halSnps
