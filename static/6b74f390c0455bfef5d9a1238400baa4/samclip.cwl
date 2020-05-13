class: CommandLineTool
id: samclip.cwl
inputs:
- id: ref
  doc: Reference genome - needs FASTA.fai index
  type: string
  inputBinding:
    prefix: --ref
- id: max
  doc: Maximum clip length to allow (default=5)
  type: string
  inputBinding:
    prefix: --max
- id: invert
  doc: Output rejected SAM lines and ignore good ones
  type: boolean
  inputBinding:
    prefix: --invert
- id: debug
  doc: Print verbose debug info to stderr
  type: boolean
  inputBinding:
    prefix: --debug
- id: progress
  doc: Print progress every NUM records (default=100000,none=0)
  type: string
  inputBinding:
    prefix: --progress
outputs: []
cwlVersion: v1.1
baseCommand:
- samclip
