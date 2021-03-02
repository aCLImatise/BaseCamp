class: CommandLineTool
id: make_hexamer_tab.py.cwl
inputs:
- id: in_cod
  doc: "Coding sequence (must be CDS without UTR, i.e. from\nstart coden to stop coden)\
    \ in fasta format"
  type: File?
  inputBinding:
    prefix: --cod
- id: in_non_cod
  doc: "Noncoding sequences in fasta format\n"
  type: File?
  inputBinding:
    prefix: --noncod
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- make_hexamer_tab.py
