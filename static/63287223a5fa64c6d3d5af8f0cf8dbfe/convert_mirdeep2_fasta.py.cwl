class: CommandLineTool
id: convert_mirdeep2_fasta.py.cwl
inputs:
- id: in_fast_an
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- convert-mirdeep2-fasta.py
