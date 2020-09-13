class: CommandLineTool
id: ../../../vk_calc.cwl
inputs:
- id: in_frequency
  doc: ''
  type: boolean
  inputBinding:
    prefix: --frequency
- id: in_genotypes
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_sample_hom_gt
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_spectrum
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- vk
- calc
