class: CommandLineTool
id: ../../../faToFastq.cwl
inputs:
- id: in_qual
  doc: quality letter to use.  Default is '<' which is good I think....
  type: string
  inputBinding:
    prefix: -qual
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- faToFastq
