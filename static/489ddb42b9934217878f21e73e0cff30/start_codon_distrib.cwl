class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/start_codon_distrib.cwl
inputs:
- id: three_comma
  doc: output only a comma separated list (no spaces) of atg, gtg, ttg
  type: boolean
  inputBinding:
    prefix: --3comma
- id: sequence_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: coords
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- start-codon-distrib
