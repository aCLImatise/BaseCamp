class: CommandLineTool
id: prophyle_propagation_makefile.py.cwl
inputs:
- id: in_kmer_length
  doc: k-mer length
  type: long?
  inputBinding:
    prefix: -k
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- prophyle_propagation_makefile.py
