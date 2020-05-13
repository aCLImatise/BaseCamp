class: CommandLineTool
id: snippy_core.cwl
inputs:
- id: debug
  doc: "!        Output verbose debug info (default '0')."
  type: boolean
  inputBinding:
    prefix: --debug
- id: check
  doc: "!        Check dependencies and exit (default '0')."
  type: boolean
  inputBinding:
    prefix: --check
- id: ref
  doc: Reference in FASTA or GENBANK (default '').
  type: string
  inputBinding:
    prefix: --ref
- id: prefix
  doc: Output prefix (default 'core').
  type: string
  inputBinding:
    prefix: --prefix
- id: max_hap
  doc: Largest haplotype to decompose (default '100').
  type: string
  inputBinding:
    prefix: --maxhap
- id: mask
  doc: BED file of sites to mask (default '').
  type: string
  inputBinding:
    prefix: --mask
- id: gap_char
  doc: Gap/deletion character (default '-').
  type: string
  inputBinding:
    prefix: --gap-char
- id: mask_char
  doc: Masking character (default 'X').
  type: string
  inputBinding:
    prefix: --mask-char
- id: in_prefix
  doc: Expected prefix of Snippy output files (default 'snps').
  type: string
  inputBinding:
    prefix: --inprefix
outputs: []
cwlVersion: v1.1
baseCommand:
- snippy-core
