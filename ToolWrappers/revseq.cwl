class: CommandLineTool
id: revseq.cwl
inputs:
- id: in_description
  doc: 'General qualifiers:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- revseq
