class: CommandLineTool
id: ../../../skmer.cwl
inputs:
- id: in_debug
  doc: Print the traceback when an exception is raised
  type: boolean
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- skmer
