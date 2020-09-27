class: CommandLineTool
id: ilasm.cwl
inputs:
- id: in_about
  doc: About the Mono ILasm compiler
  type: boolean
  inputBinding:
    prefix: --about
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ilasm
