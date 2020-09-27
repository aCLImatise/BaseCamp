class: CommandLineTool
id: cmph5tools.py_stats.cwl
inputs:
- id: in_what
  doc: ''
  type: string
  inputBinding:
    prefix: --what
- id: in_outfile
  doc: ''
  type: string
  inputBinding:
    prefix: --outFile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cmph5tools.py
- stats
