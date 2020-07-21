class: CommandLineTool
id: ../../../hicap.cwl
inputs:
- id: query_fp
  doc: Input FASTA query
  type: string
  inputBinding:
    prefix: --query_fp
- id: output_dir
  doc: Output directory
  type: string
  inputBinding:
    prefix: --output_dir
- id: help_all
  doc: Display extended help
  type: boolean
  inputBinding:
    prefix: --help_all
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- hicap
