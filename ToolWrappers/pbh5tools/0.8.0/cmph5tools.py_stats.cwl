class: CommandLineTool
id: cmph5tools.py_stats.cwl
inputs:
- id: in_outfile
  doc: output csv filename
  type: File?
  inputBinding:
    prefix: --outFile
- id: in_what
  doc: ''
  type: string?
  inputBinding:
    prefix: --what
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: output csv filename
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints: []
cwlVersion: v1.1
baseCommand:
- cmph5tools.py
- stats
