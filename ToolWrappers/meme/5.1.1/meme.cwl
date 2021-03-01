class: CommandLineTool
id: meme.cwl
inputs:
- id: in_alignment
  doc: '[-wg <wg>]              gap opening cost for multiple alignments'
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
- meme
