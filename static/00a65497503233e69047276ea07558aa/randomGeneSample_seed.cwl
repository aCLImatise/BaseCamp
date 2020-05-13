class: CommandLineTool
id: randomGeneSample_seed.cwl
inputs:
- id: input_x_mfa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: backbone_seq_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: sample_genome
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: number_of_genes
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: output_basename
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: random
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: seed
  doc: ''
  type: string
  inputBinding:
    position: 6
outputs: []
cwlVersion: v1.1
baseCommand:
- randomGeneSample
- seed
