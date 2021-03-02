class: CommandLineTool
id: pybel_manage_drop.cwl
inputs:
- id: in_yes
  doc: Confirm the action without prompting.
  type: boolean?
  inputBinding:
    prefix: --yes
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pybel
- manage
- drop
