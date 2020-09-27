class: CommandLineTool
id: mono_sgen_gdb.py.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mono-sgen-gdb.py
