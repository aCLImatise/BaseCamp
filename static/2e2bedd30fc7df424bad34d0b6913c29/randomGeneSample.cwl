class: CommandLineTool
id: randomGeneSample.cwl
inputs:
- id: in_input_x_mfa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_backbone_seq_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_sample_genome
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_number_of_genes
  doc: ''
  type: long
  inputBinding:
    position: 3
- id: in_output_base_name
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_random
  doc: ''
  type: string?
  inputBinding:
    position: 5
- id: in_seed
  doc: ''
  type: string?
  inputBinding:
    position: 6
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- randomGeneSample
