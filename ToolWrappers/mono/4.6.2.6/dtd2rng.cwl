class: CommandLineTool
id: dtd2rng.cwl
inputs:
- id: in_compact
  doc: ': output compact syntax.'
  type: boolean?
  inputBinding:
    prefix: --compact
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dtd2rng
