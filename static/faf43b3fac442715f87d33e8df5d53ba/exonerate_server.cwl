class: CommandLineTool
id: exonerate_server.cwl
inputs:
- id: port
  doc: '[12886] '
  type: boolean
  inputBinding:
    prefix: --port
- id: input
  doc: '[mandatory]  <*** not set ***>'
  type: boolean
  inputBinding:
    prefix: --input
- id: preload
  doc: '[TRUE] '
  type: boolean
  inputBinding:
    prefix: --preload
- id: max_connections
  doc: '[4] '
  type: boolean
  inputBinding:
    prefix: --maxconnections
- id: soft_mask_query
  doc: '[FALSE] '
  type: boolean
  inputBinding:
    prefix: --softmaskquery
- id: soft_mask_target
  doc: '[FALSE] '
  type: boolean
  inputBinding:
    prefix: --softmasktarget
- id: hsp_filter
  doc: '[0] '
  type: boolean
  inputBinding:
    prefix: --hspfilter
- id: use_word_drop_off
  doc: '[TRUE] '
  type: boolean
  inputBinding:
    prefix: --useworddropoff
- id: seed_repeat
  doc: '[1] '
  type: boolean
  inputBinding:
    prefix: --seedrepeat
- id: dna_word_len
  doc: '[12] '
  type: boolean
  inputBinding:
    prefix: --dnawordlen
- id: protein_word_len
  doc: '[6] '
  type: boolean
  inputBinding:
    prefix: --proteinwordlen
- id: codon_word_len
  doc: '[12] '
  type: boolean
  inputBinding:
    prefix: --codonwordlen
- id: dna_hsp_drop_off
  doc: '[30] '
  type: boolean
  inputBinding:
    prefix: --dnahspdropoff
- id: protein_hsp_drop_off
  doc: '[20] '
  type: boolean
  inputBinding:
    prefix: --proteinhspdropoff
- id: codon_hsp_drop_off
  doc: '[40] '
  type: boolean
  inputBinding:
    prefix: --codonhspdropoff
- id: dna_hsp_threshold
  doc: '[75] '
  type: boolean
  inputBinding:
    prefix: --dnahspthreshold
- id: protein_hsp_threshold
  doc: '[30] '
  type: boolean
  inputBinding:
    prefix: --proteinhspthreshold
- id: codon_hsp_threshold
  doc: '[50] '
  type: boolean
  inputBinding:
    prefix: --codonhspthreshold
- id: dna_word_limit
  doc: '[0] '
  type: boolean
  inputBinding:
    prefix: --dnawordlimit
- id: protein_word_limit
  doc: '[4] '
  type: boolean
  inputBinding:
    prefix: --proteinwordlimit
- id: codon_word_limit
  doc: '[4] '
  type: boolean
  inputBinding:
    prefix: --codonwordlimit
- id: gene_seed
  doc: '[0] '
  type: boolean
  inputBinding:
    prefix: --geneseed
- id: gene_seed_repeat
  doc: '[3] '
  type: boolean
  inputBinding:
    prefix: --geneseedrepeat
outputs: []
cwlVersion: v1.1
baseCommand:
- exonerate-server
