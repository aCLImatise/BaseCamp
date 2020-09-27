class: CommandLineTool
id: nib_intervals_to_fasta.py.cwl
inputs:
- id: in_range_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_nib_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nib_intervals_to_fasta.py
