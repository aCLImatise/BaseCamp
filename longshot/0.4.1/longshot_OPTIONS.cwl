class: CommandLineTool
id: longshot_OPTIONS.cwl
inputs:
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: bam
  doc: ''
  type: string
  inputBinding:
    prefix: --bam
- id: ref
  doc: ''
  type: string
  inputBinding:
    prefix: --ref
- id: out
  doc: ''
  type: string
  inputBinding:
    prefix: --out
outputs: []
cwlVersion: v1.1
baseCommand:
- longshot
- OPTIONS
