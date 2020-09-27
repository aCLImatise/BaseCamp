class: CommandLineTool
id: fprotdist.cwl
inputs:
- id: in_n_categories
  doc: "integer    [1] Number of substitution rate categories\n(Integer from 1 to\
    \ 9)"
  type: boolean
  inputBinding:
    prefix: -ncategories
- id: in_weights
  doc: properties Weights file
  type: boolean
  inputBinding:
    prefix: -weights
- id: in_method
  doc: "menu       [j] Choose the method to use (Values: j\n(Jones-Taylor-Thornton\
    \ matrix); h\n(Henikoff/Tiller PMB matrix); d (Dayhoff PAM\nmatrix); k (Kimura\
    \ formula); s (Similarity\ntable); c (Categories model))"
  type: boolean
  inputBinding:
    prefix: -method
- id: in_print_data
  doc: boolean    [N] Print data at start of run
  type: boolean
  inputBinding:
    prefix: -printdata
- id: in_alignments
  doc: '[-outfile]           outfile    [*.fprotdist] Phylip distance matrix output'
  type: string
  inputBinding:
    position: 0
- id: in_file
  doc: 'Additional (Optional) qualifiers (* if not always prompted):'
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fprotdist
