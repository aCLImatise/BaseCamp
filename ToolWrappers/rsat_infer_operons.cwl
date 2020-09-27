class: CommandLineTool
id: rsat_infer_operons.cwl
inputs:
- id: in_return
  doc: ',leader,operon'
  type: string
  inputBinding:
    prefix: -return
- id: in_no_orf
  doc: "\e[1mExample 5\e[0m\nNote that operons can contain non-coding genes. For example,\
    \ the\nmetT operon contains a series of tRNA genes for methionine, leucine\nand\
    \ glutamina, respectively.\ninfer-operons -org Escherichia_coli_GCF_000005845.2_ASM584v2\
    \ -q glnV\n-q metU -q ileV \\ -return q_info,up_info,operon"
  type: long
  inputBinding:
    prefix: -noorf
- id: in_infer_operons
  doc: "\e[1mDESCRIPTION\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_jacques_dot_van_helden_backslash_at_univ_am_udot_fr
  doc: "\e[1mCATEGORY\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_genomics
  doc: "\e[1mMETHOD\e[0m"
  type: string
  inputBinding:
    position: 1
- id: in_genes_dot
  doc: infer-operons -v 1 -org Escherichia_coli_GCF_000005845.2_ASM584v2 -q
  type: string
  inputBinding:
    position: 0
- id: in_retrieve_seq
  doc: neighbour-genes
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rsat
- infer-operons
