class: CommandLineTool
id: nanopore_transcript_abundance.py.cwl
inputs:
- id: in_c
  doc: ''
  type: string?
  inputBinding:
    prefix: -c
- id: in_i
  doc: ''
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
- nanopore_transcript_abundance.py
