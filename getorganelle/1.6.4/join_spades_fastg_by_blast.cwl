class: CommandLineTool
id: join_spades_fastg_by_blast.py.cwl
inputs:
- id: python
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: join_spades_fast_g_by_blastp_y
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: g
  doc: followed by your input fastg file
  type: string
  inputBinding:
    prefix: -g
- id: f
  doc: followed by Fasta index format
  type: string
  inputBinding:
    prefix: -f
- id: keep_temp
  doc: Choose to disable deleting temp files produced by blast and this script
  type: boolean
  inputBinding:
    prefix: --keep-temp
- id: bt
  doc: 'Default: 0.60'
  type: string
  inputBinding:
    prefix: --bt
- id: max_gap
  doc: 'Default: 1500'
  type: long
  inputBinding:
    prefix: --max-gap
- id: con_all
  doc: 'Choose to activate connecting all possible contigs. Default: False'
  type: boolean
  inputBinding:
    prefix: --con-all
- id: depth
  doc: 'Default: 1.0'
  type: string
  inputBinding:
    prefix: --depth
- id: which_blast
  doc: 'Assign the path to BLAST binary files if not added to the path. Default: try
    GetOrganelleDep/linux/ncbi- blast first, then $PATH'
  type: string
  inputBinding:
    prefix: --which-blast
outputs: []
cwlVersion: v1.1
baseCommand:
- join_spades_fastg_by_blast.py
