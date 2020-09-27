class: CommandLineTool
id: snippy_core.cwl
inputs:
- id: in_debug
  doc: "!        Output verbose debug info (default '0')."
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_check
  doc: "!        Check dependencies and exit (default '0')."
  type: boolean
  inputBinding:
    prefix: --check
- id: in_ref
  doc: Reference in FASTA or GENBANK (default '').
  type: string
  inputBinding:
    prefix: --ref
- id: in_prefix
  doc: Output prefix (default 'core').
  type: string
  inputBinding:
    prefix: --prefix
- id: in_max_hap
  doc: Largest haplotype to decompose (default '100').
  type: long
  inputBinding:
    prefix: --maxhap
- id: in_mask
  doc: BED file of sites to mask (default '').
  type: File
  inputBinding:
    prefix: --mask
- id: in_gap_char
  doc: Gap/deletion character (default '-').
  type: string
  inputBinding:
    prefix: --gap-char
- id: in_mask_char
  doc: Masking character (default 'X').
  type: string
  inputBinding:
    prefix: --mask-char
- id: in_in_prefix
  doc: Expected prefix of Snippy output files (default 'snps').
  type: string
  inputBinding:
    prefix: --inprefix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- snippy-core
