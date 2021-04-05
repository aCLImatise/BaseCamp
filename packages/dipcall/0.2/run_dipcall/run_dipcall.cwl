class: CommandLineTool
id: run_dipcall.cwl
inputs:
- id: in_number_of_threads
  doc: number of threads [8]
  type: long?
  inputBinding:
    prefix: -t
- id: in_unimapminimap_index_reffa
  doc: unimap/minimap2 index for ref.fa []
  type: File?
  inputBinding:
    prefix: -d
- id: in_par_chrx_assuming
  doc: PAR on chrX; assuming male
  type: File?
  inputBinding:
    prefix: -x
- id: in_zdrop
  doc: Z-drop [mapper default]
  type: long?
  inputBinding:
    prefix: -z
- id: in_use_minimap_mapping
  doc: use minimap2 for mapping (unimap by default)
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_repetitive_kmer_list
  doc: repetitive k-mer list; use winnowmap for mapping
  type: File?
  inputBinding:
    prefix: -W
- id: in_more_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -MORE_OPTIONS
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -OPTIONS
- id: in_prefix
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_ref_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_pat_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_mat_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dipcall:0.2--0
cwlVersion: v1.1
baseCommand:
- run-dipcall
