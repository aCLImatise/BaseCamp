class: CommandLineTool
id: transIndel_build_DNA.py.cwl
inputs:
- id: python
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: trans_in_del_build_dna_py
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: opts
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: mapq_cut_off
  doc: :minimal MapQ in SAM for support SV event, default 15
  type: boolean
  inputBinding:
    prefix: --mapq_cutoff
- id: max_del_length
  doc: :maximum deletion length to be detected (10e6)
  type: boolean
  inputBinding:
    prefix: --max_del_length
outputs: []
cwlVersion: v1.1
baseCommand:
- transIndel_build_DNA.py
