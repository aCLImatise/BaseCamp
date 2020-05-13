class: CommandLineTool
id: make_hexamer_tab.py.cwl
inputs:
- id: cod
  doc: Coding sequence (must be CDS without UTR, i.e. from start coden to stop coden)
    in fasta format
  type: string
  inputBinding:
    prefix: --cod
- id: non_cod
  doc: Noncoding sequences in fasta format
  type: string
  inputBinding:
    prefix: --noncod
outputs: []
cwlVersion: v1.1
baseCommand:
- make_hexamer_tab.py
