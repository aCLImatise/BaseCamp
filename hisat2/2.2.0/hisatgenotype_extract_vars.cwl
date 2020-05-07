class: CommandLineTool
id: hisatgenotype_extract_vars.py.cwl
inputs:
- id: base
  doc: 'base filename for backbone sequence, variants, and linking info (Default:
    hla)'
  type: string
  inputBinding:
    prefix: --base
- id: locus_list
  doc: 'A comma-separated list of gene names (default: empty, all genes)'
  type: string
  inputBinding:
    prefix: --locus-list
- id: inter_gap
  doc: 'Maximum distance for variants to be in the same haplotype (default: 30)'
  type: long
  inputBinding:
    prefix: --inter-gap
- id: intra_gap
  doc: 'Break a haplotype into several haplotypes (default: 50)'
  type: long
  inputBinding:
    prefix: --intra-gap
- id: whole_haplotype
  doc: Include partial alleles (e.g. A_nuc.fasta)
  type: boolean
  inputBinding:
    prefix: --whole-haplotype
- id: min_var_freq
  doc: 'Exclude variants whose freq is below than this value in percentage (Default:
    0.0)'
  type: long
  inputBinding:
    prefix: --min-var-freq
- id: ext_seq
  doc: 'Length of extra sequences flanking backbone sequences (Default: 0)'
  type: string
  inputBinding:
    prefix: --ext-seq
- id: left_shift
  doc: Shift deletions to the leftmost
  type: boolean
  inputBinding:
    prefix: --leftshift
- id: no_partial
  doc: Exclude partial alleles, exon-only sequences in HLA
  type: boolean
  inputBinding:
    prefix: --no-partial
- id: verbose
  doc: also print some statistics to stderr
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- hisatgenotype_extract_vars.py
