class: CommandLineTool
id: split_fastx_input.cwl
inputs:
- id: input
  doc: Input fastax/q file.
  type: string
  inputBinding:
    position: 0
- id: output
  doc: Output fastax/q file.
  type: string
  inputBinding:
    position: 1
- id: chunksize
  doc: Maximum size of output sequences.
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- split_fastx
- input
