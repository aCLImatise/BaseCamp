class: CommandLineTool
id: anvi_script_estimate_genome_size.cwl
inputs:
- id: c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
- id: verbose
  doc: ''
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-script-estimate-genome-size
