class: CommandLineTool
id: gtdbtk.cwl
inputs:
- id: in_error
  doc: ________________________________________________________________________________
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gtdbtk
