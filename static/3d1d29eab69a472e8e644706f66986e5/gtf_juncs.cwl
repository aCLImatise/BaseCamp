class: CommandLineTool
id: gtf_juncs.cwl
inputs:
- id: in_transcripts_dot_gtf
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gtf_juncs
