class: CommandLineTool
id: randomGeneSample_input xmfa_backbone seq file_sample genome_random.cwl
inputs:
- id: number_of_genes
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_basename
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: random
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: seed
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- randomGeneSample
- input xmfa
- backbone seq file
- sample genome
- random
