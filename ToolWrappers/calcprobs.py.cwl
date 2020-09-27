class: CommandLineTool
id: calcprobs.py.cwl
inputs:
- id: in_input
  doc: "Read structures from input file. Format must be dot-\nbracket structures,\
    \ each per one line with a trailing\nline containing only a semi-colon. (default:\
    \ None)"
  type: File
  inputBinding:
    prefix: --input
- id: in_temperature
  doc: "Temperature of the energy calculations. (default:\n37.0)\n"
  type: double
  inputBinding:
    prefix: --temperature
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- calcprobs.py
