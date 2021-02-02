class: CommandLineTool
id: ../../../ariba_getref.cwl
inputs:
- id: in_debug
  doc: Do not delete temporary downloaded files
  type: boolean
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ariba
- getref
