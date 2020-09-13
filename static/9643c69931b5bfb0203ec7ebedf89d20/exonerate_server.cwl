class: CommandLineTool
id: ../../../exonerate_server.cwl
inputs:
- id: in_help
  doc: ''
  type: boolean
  inputBinding:
    prefix: --help
- id: in_port
  doc: ''
  type: string
  inputBinding:
    prefix: --port
- id: in_input
  doc: ''
  type: File
  inputBinding:
    prefix: --input
- id: in_preload
  doc: ''
  type: boolean
  inputBinding:
    prefix: --preload
- id: in_max_connections
  doc: ''
  type: string
  inputBinding:
    prefix: --maxconnections
- id: in_verbosity
  doc: ''
  type: string
  inputBinding:
    prefix: --verbosity
- id: in_soft_mask_query
  doc: ''
  type: boolean
  inputBinding:
    prefix: --softmaskquery
- id: in_soft_mask_target
  doc: ''
  type: boolean
  inputBinding:
    prefix: --softmasktarget
- id: in_dna_sub_mat
  doc: ''
  type: string
  inputBinding:
    prefix: --dnasubmat
- id: in_protein_sub_mat
  doc: ''
  type: string
  inputBinding:
    prefix: --proteinsubmat
- id: in_hsp_filter
  doc: ''
  type: boolean
  inputBinding:
    prefix: --hspfilter
- id: in_use_word_drop_off
  doc: ''
  type: boolean
  inputBinding:
    prefix: --useworddropoff
- id: in_seed_repeat
  doc: ''
  type: boolean
  inputBinding:
    prefix: --seedrepeat
- id: in_dna_word_len
  doc: ''
  type: string
  inputBinding:
    prefix: --dnawordlen
- id: in_protein_word_len
  doc: ''
  type: string
  inputBinding:
    prefix: --proteinwordlen
- id: in_codon_word_len
  doc: ''
  type: string
  inputBinding:
    prefix: --codonwordlen
- id: in_dna_hsp_drop_off
  doc: ''
  type: string
  inputBinding:
    prefix: --dnahspdropoff
- id: in_protein_hsp_drop_off
  doc: ''
  type: string
  inputBinding:
    prefix: --proteinhspdropoff
- id: in_codon_hsp_drop_off
  doc: ''
  type: string
  inputBinding:
    prefix: --codonhspdropoff
- id: in_dna_hsp_threshold
  doc: ''
  type: string
  inputBinding:
    prefix: --dnahspthreshold
- id: in_protein_hsp_threshold
  doc: ''
  type: string
  inputBinding:
    prefix: --proteinhspthreshold
- id: in_codon_hsp_threshold
  doc: ''
  type: string
  inputBinding:
    prefix: --codonhspthreshold
- id: in_dna_word_limit
  doc: ''
  type: string
  inputBinding:
    prefix: --dnawordlimit
- id: in_protein_word_limit
  doc: ''
  type: string
  inputBinding:
    prefix: --proteinwordlimit
- id: in_codon_word_limit
  doc: ''
  type: string
  inputBinding:
    prefix: --codonwordlimit
- id: in_gene_seed
  doc: ''
  type: string
  inputBinding:
    prefix: --geneseed
- id: in_gene_seed_repeat
  doc: ''
  type: long
  inputBinding:
    prefix: --geneseedrepeat
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- exonerate-server
