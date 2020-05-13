class: CommandLineTool
id: randomGeneSample_input xmfa_backbone seq file_sample genome_number of genes.cwl
inputs:
- id: output_basename
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: random
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: seed
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- randomGeneSample
- input xmfa
- backbone seq file
- sample genome
- number of genes
