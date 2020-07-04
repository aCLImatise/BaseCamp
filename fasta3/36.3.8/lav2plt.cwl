class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/lav2plt.pl.cwl
inputs:
- id: help
  doc: description
  type: string
  inputBinding:
    prefix: --help
- id: have_bit_scores
  doc: have bit scores
  type: boolean
  inputBinding:
    prefix: -B
- id: simulated_database_size
  doc: =#   simulated database size
  type: boolean
  inputBinding:
    prefix: -Z
- id: dev
  doc: '|ps graphical output format'
  type: string
  inputBinding:
    prefix: --dev
- id: x_a_slash_ya
  doc: annotation script
  type: string
  inputBinding:
    prefix: --xA/--yA
outputs: []
cwlVersion: v1.1
baseCommand:
- lav2plt.pl
