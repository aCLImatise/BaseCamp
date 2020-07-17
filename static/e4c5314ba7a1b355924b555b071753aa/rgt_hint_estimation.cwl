class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/rgt_hint_estimation.cwl
inputs:
- id: k_nb
  doc: 'Size of k-mer for bias estimation. DEFAULT: 8'
  type: long
  inputBinding:
    prefix: --k-nb
- id: output_location
  doc: 'Path where the output bias table files will be written. DEFAULT: current directory'
  type: File
  inputBinding:
    prefix: --output-location
- id: output_prefix
  doc: 'The prefix for results files. DEFAULT: Bias'
  type: string
  inputBinding:
    prefix: --output-prefix
- id: organism
  doc: ''
  type: string
  inputBinding:
    prefix: --organism
- id: bias_type
  doc: ''
  type: string
  inputBinding:
    prefix: --bias-type
outputs: []
cwlVersion: v1.1
baseCommand:
- rgt-hint
- estimation
