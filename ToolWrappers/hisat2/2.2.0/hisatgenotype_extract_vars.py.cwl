class: CommandLineTool
id: hisatgenotype_extract_vars.py.cwl
inputs:
- id: in_base
  doc: "base filename for backbone sequence, variants, and\nlinking info (Default:\
    \ hla)"
  type: File
  inputBinding:
    prefix: --base
- id: in_locus_list
  doc: "A comma-separated list of gene names (default: empty,\nall genes)"
  type: string
  inputBinding:
    prefix: --locus-list
- id: in_inter_gap
  doc: "Maximum distance for variants to be in the same\nhaplotype (default: 30)"
  type: long
  inputBinding:
    prefix: --inter-gap
- id: in_intra_gap
  doc: "Break a haplotype into several haplotypes (default:\n50)"
  type: long
  inputBinding:
    prefix: --intra-gap
- id: in_whole_haplotype
  doc: Include partial alleles (e.g. A_nuc.fasta)
  type: boolean
  inputBinding:
    prefix: --whole-haplotype
- id: in_min_var_freq
  doc: "Exclude variants whose freq is below than this value\nin percentage (Default:\
    \ 0.0)"
  type: long
  inputBinding:
    prefix: --min-var-freq
- id: in_ext_seq
  doc: "Length of extra sequences flanking backbone sequences\n(Default: 0)"
  type: long
  inputBinding:
    prefix: --ext-seq
- id: in_left_shift
  doc: Shift deletions to the leftmost
  type: boolean
  inputBinding:
    prefix: --leftshift
- id: in_no_partial
  doc: Exclude partial alleles, exon-only sequences in HLA
  type: boolean
  inputBinding:
    prefix: --no-partial
- id: in_verbose
  doc: also print some statistics to stderr
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hisatgenotype_extract_vars.py
