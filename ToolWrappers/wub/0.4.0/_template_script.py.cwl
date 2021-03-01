class: CommandLineTool
id: _template_script.py.cwl
inputs:
- id: in_input
  doc: Input.
  type: string?
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- _template_script.py
