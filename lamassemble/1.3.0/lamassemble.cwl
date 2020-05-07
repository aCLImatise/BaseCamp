class: CommandLineTool
id: lamassemble.cwl
inputs:
- id: p
  doc: number of parallel threads (default=1)
  type: string
  inputBinding:
    prefix: -P
- id: w
  doc: use minimum positions in length-W windows (default=19)
  type: string
  inputBinding:
    prefix: -W
- id: m
  doc: max initial matches per query position (default=5)
  type: string
  inputBinding:
    prefix: -m
- id: z
  doc: max gap length (default=30)
  type: string
  inputBinding:
    prefix: -z
outputs: []
cwlVersion: v1.1
baseCommand:
- lamassemble
