class: CommandLineTool
id: gtf2bed.pl.cwl
inputs:
- id: in_input_gtf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_upstream_extension
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_downstream_extension
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gtf2bed.pl
