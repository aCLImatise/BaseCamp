class: CommandLineTool
id: kc_align.cwl
inputs:
- id: reference
  doc: Reference to align against
  type: string
  inputBinding:
    prefix: --reference
- id: reads
  doc: Reads to align
  type: string
  inputBinding:
    prefix: --reads
- id: start
  doc: Start position, required in genome mode
  type: string
  inputBinding:
    prefix: --start
- id: end
  doc: End position, required in genome mode
  type: string
  inputBinding:
    prefix: --end
- id: mode
  doc: Alignment mode
  type: string
  inputBinding:
    prefix: --mode
- id: compress
  doc: Compress identical sequences
  type: boolean
  inputBinding:
    prefix: --compress
outputs: []
cwlVersion: v1.1
baseCommand:
- kc-align
