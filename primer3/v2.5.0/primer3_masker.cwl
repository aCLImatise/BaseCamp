class: CommandLineTool
id: primer3_masker.cwl
inputs:
- id: probability_cut_off
  doc: '- masking cutoff [0, 1] (default: >=0.1)'
  type: boolean
  inputBinding:
    prefix: --probability_cutoff
- id: km_er_lists_path
  doc: '- path to the kmer list files (default: ../kmer_lists/)'
  type: boolean
  inputBinding:
    prefix: --kmer_lists_path
- id: list_prefix
  doc: '- prefix of the k-mer lists to use with default model (default: homo_sapiens)'
  type: boolean
  inputBinding:
    prefix: --list_prefix
- id: absolute_value_cut_off
  doc: based on k-mer count; requires a single list name, defined with -l
  type: string
  inputBinding:
    prefix: --absolute_value_cutoff
- id: list
  doc: '- define a single k-mer list for masking with absolute cutoff option -a'
  type: boolean
  inputBinding:
    prefix: --list
- id: mask_5p
  doc: "- nucleotides to mask in 5' direction (default: 1)"
  type: boolean
  inputBinding:
    prefix: --mask_5p
- id: mask_3p
  doc: "- nucleotides to mask in 3' direction (default: 0)"
  type: boolean
  inputBinding:
    prefix: --mask_3p
- id: masking_char
  doc: '- character used for masking (default: N)'
  type: boolean
  inputBinding:
    prefix: --masking_char
- id: soft_mask
  doc: '- use soft masking (default: false)'
  type: boolean
  inputBinding:
    prefix: --soft_mask
- id: masking_direction
  doc: '- a strand to mask (fwd, rev, both) (default: both)'
  type: boolean
  inputBinding:
    prefix: --masking_direction
outputs: []
cwlVersion: v1.1
baseCommand:
- primer3_masker
