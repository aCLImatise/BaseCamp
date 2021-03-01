class: CommandLineTool
id: primer3_masker.cwl
inputs:
- id: in_km_er_lists_path
  doc: '- path to the kmer list files (default: ../kmer_lists/)'
  type: boolean?
  inputBinding:
    prefix: --kmer_lists_path
- id: in_list_prefix
  doc: '- prefix of the k-mer lists to use with default model (default: homo_sapiens)'
  type: boolean?
  inputBinding:
    prefix: --list_prefix
- id: in_absolute_value_cut_off
  doc: '- masking cutoff based on k-mer count; requires a single list name, defined
    with -l'
  type: boolean?
  inputBinding:
    prefix: --absolute_value_cutoff
- id: in_list
  doc: '- define a single k-mer list for masking with absolute cutoff option -a'
  type: boolean?
  inputBinding:
    prefix: --list
- id: in_mask_five_p
  doc: "- nucleotides to mask in 5' direction (default: 1)"
  type: boolean?
  inputBinding:
    prefix: --mask_5p
- id: in_mask_three_p
  doc: "- nucleotides to mask in 3' direction (default: 0)"
  type: boolean?
  inputBinding:
    prefix: --mask_3p
- id: in_masking_char
  doc: '- character used for masking (default: N)'
  type: boolean?
  inputBinding:
    prefix: --masking_char
- id: in_soft_mask
  doc: '- use soft masking (default: false)'
  type: boolean?
  inputBinding:
    prefix: --soft_mask
- id: in_masking_direction
  doc: '- a strand to mask (fwd, rev, both) (default: both)'
  type: boolean?
  inputBinding:
    prefix: --masking_direction
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- primer3_masker
