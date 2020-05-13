class: CommandLineTool
id: randomGeneSample_input xmfa_backbone seq file_output base name.cwl
inputs:
- id: sample_genome
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: number_of_genes
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_basename
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: random
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: seed
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- randomGeneSample
- input xmfa
- backbone seq file
- output base name
