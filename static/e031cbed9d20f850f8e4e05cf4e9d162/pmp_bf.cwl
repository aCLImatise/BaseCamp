class: CommandLineTool
id: pmp_bf.cwl
inputs:
- id: in_model
  doc: '|average|jc|k2|f81|f84|hky|tn (default=f81)'
  type: long?
  inputBinding:
    prefix: --model
- id: in_pur_pyr
  doc: (default=1.0)
  type: double?
  inputBinding:
    prefix: --pur-pyr
- id: in_transition_transversion
  doc: (default=0.5)
  type: double?
  inputBinding:
    prefix: --transition-transversion
- id: in_bg
  doc: (default=1.0)
  type: double?
  inputBinding:
    prefix: --bg
- id: in_fg
  doc: (default=1.0)
  type: double?
  inputBinding:
    prefix: --fg
- id: in_motif
  doc: (default=all)
  type: string?
  inputBinding:
    prefix: --motif
- id: in_b_file
  doc: (default from motif file)
  type: File?
  inputBinding:
    prefix: --bfile
- id: in_pseudo_count
  doc: (default=0.1)
  type: double?
  inputBinding:
    prefix: --pseudocount
- id: in_pmp
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_tree_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_meme_file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pmp_bf
