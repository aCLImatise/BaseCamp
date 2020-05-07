class: CommandLineTool
id: transIndel_build_RNA.py.cwl
inputs:
- id: python
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: trans_in_del_build_rna_py
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: opts
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: r
  doc: :reference genome used for analyzing RNAseq data (required)
  type: boolean
  inputBinding:
    prefix: -r
- id: g
  doc: :gtf gene annotatino file used for analyzing RNAseq data (required)
  type: boolean
  inputBinding:
    prefix: -g
- id: s
  doc: :splice site half bin size,  default 20
  type: boolean
  inputBinding:
    prefix: -s
- id: mapq_cut_off
  doc: :minimal MapQ in SAM for support SV event, default 60
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
- transIndel_build_RNA.py
