class: CommandLineTool
id: stacks_samtools_tview.cwl
inputs:
- id: p
  doc: ''
  type: string
  inputBinding:
    prefix: -P
- id: c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- stacks-samtools-tview
