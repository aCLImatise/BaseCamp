class: CommandLineTool
id: ../../../_entret.cwl
inputs:
- id: in_first_only
  doc: boolean    Read one sequence and stop
  type: boolean
  inputBinding:
    prefix: -firstonly
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- _entret
