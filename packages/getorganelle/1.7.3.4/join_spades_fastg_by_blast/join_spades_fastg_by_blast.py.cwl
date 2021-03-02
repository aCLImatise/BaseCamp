class: CommandLineTool
id: join_spades_fastg_by_blast.py.cwl
inputs:
- id: in_followed_your_input
  doc: followed by your input fastg file
  type: File?
  inputBinding:
    prefix: -g
- id: in_followed_fasta_index
  doc: followed by Fasta index format
  type: string?
  inputBinding:
    prefix: -f
- id: in_keep_temp
  doc: "Choose to disable deleting temp files produced by\nblast and this script"
  type: boolean?
  inputBinding:
    prefix: --keep-temp
- id: in_bt
  doc: 'Default: 0.60'
  type: double?
  inputBinding:
    prefix: --bt
- id: in_max_gap
  doc: 'Default: 1500'
  type: long?
  inputBinding:
    prefix: --max-gap
- id: in_con_all
  doc: "Choose to activate connecting all possible contigs.\nDefault: False"
  type: boolean?
  inputBinding:
    prefix: --con-all
- id: in_depth
  doc: 'Default: 1.0'
  type: double?
  inputBinding:
    prefix: --depth
- id: in_which_blast
  doc: "Assign the path to BLAST binary files if not added to\nthe path. Default:\
    \ try GetOrganelleDep/linux/ncbi-\nblast first, then $PATH\n"
  type: File?
  inputBinding:
    prefix: --which-blast
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/getorganelle:1.7.3.4--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- join_spades_fastg_by_blast.py
