class: CommandLineTool
id: cs_OUTBASE_transcript.positions.cwl
inputs:
- id: in_cs
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cs
- OUTBASE_transcript.positions
