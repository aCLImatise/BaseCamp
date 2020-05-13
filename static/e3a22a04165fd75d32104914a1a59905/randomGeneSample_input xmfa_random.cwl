class: CommandLineTool
id: randomGeneSample_input xmfa_random.cwl
inputs:
- id: backbone_seq_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: sample_genome
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: number_of_genes
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: output_basename
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: random
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: seed
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs: []
cwlVersion: v1.1
baseCommand:
- randomGeneSample
- input xmfa
- random
