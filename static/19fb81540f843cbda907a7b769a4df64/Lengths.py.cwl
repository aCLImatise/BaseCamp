class: CommandLineTool
id: Lengths.py.cwl
inputs:
- id: in_input_file
  doc: "fasta file\n"
  type: File?
  inputBinding:
    prefix: --inputfile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- Lengths.py
