class: CommandLineTool
id: lav2plt.pl.cwl
inputs:
- id: help
  doc: description
  type: string
  inputBinding:
    prefix: --help
- id: b
  doc: have bit scores
  type: boolean
  inputBinding:
    prefix: -B
- id: z
  doc: =#   simulated database size
  type: boolean
  inputBinding:
    prefix: -Z
- id: dev
  doc: '|ps graphical output format'
  type: string
  inputBinding:
    prefix: --dev
- id: x_a
  doc: /--yA domain annotation script
  type: boolean
  inputBinding:
    prefix: --xA
outputs: []
cwlVersion: v1.1
baseCommand:
- lav2plt.pl
