class: CommandLineTool
id: lra_index.cwl
inputs:
- id: in_ccs
  doc: (flag) Index for aligning CCS reads
  type: boolean?
  inputBinding:
    prefix: -CCS
- id: in_clr
  doc: (flag) Index for aligning CLR reads
  type: boolean?
  inputBinding:
    prefix: -CLR
- id: in_ont
  doc: (flag) Index for aligning Nanopore reads
  type: boolean?
  inputBinding:
    prefix: -ONT
- id: in_contig
  doc: (flag) Index for aligning large contigs
  type: boolean?
  inputBinding:
    prefix: -CONTIG
- id: in_int_minimizer_window
  doc: (int) Minimizer window size (10).
  type: boolean?
  inputBinding:
    prefix: -W
- id: in_int_maximum_minimizer
  doc: '(int) Maximum minimizer frequency. (default: 60 for CLR and NANO reads; 50
    for CCS reads)'
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_int_word_size
  doc: (int) Word size
  type: boolean?
  inputBinding:
    prefix: -K
- id: in_help
  doc: help.
  type: string?
  inputBinding:
    prefix: -h
- id: in_file_dot_fa
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/lra:1.1.2--h5ef6573_0
cwlVersion: v1.1
baseCommand:
- lra
- index
