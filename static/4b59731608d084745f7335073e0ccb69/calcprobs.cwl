class: CommandLineTool
id: calcprobs.py.cwl
inputs:
- id: input
  doc: 'Read structures from input file. Format must be dot- bracket structures, each
    per one line with a trailing line containing only a semi-colon. (default: None)'
  type: string
  inputBinding:
    prefix: --input
- id: temperature
  doc: 'Temperature of the energy calculations. (default: 37.0)'
  type: string
  inputBinding:
    prefix: --temperature
outputs: []
cwlVersion: v1.1
baseCommand:
- calcprobs.py
