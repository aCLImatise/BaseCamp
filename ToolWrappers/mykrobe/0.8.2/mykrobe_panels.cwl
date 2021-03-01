class: CommandLineTool
id: mykrobe_panels.cwl
inputs:
- id: in_quiet
  doc: do not output warnings to stderr
  type: boolean?
  inputBinding:
    prefix: --quiet
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mykrobe
- panels
