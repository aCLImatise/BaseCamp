class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bp_oligo_count.pl.cwl
inputs:
- id: h_slash_help
  doc: ''
  type: boolean
  inputBinding:
    prefix: -h/--help
- id: lslash_length
  doc: ''
  type: string
  inputBinding:
    prefix: -l/--length
- id: oligo_count
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bp_oligo_count.pl
