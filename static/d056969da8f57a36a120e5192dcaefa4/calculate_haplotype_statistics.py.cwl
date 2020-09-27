class: CommandLineTool
id: calculate_haplotype_statistics.py.cwl
inputs:
- id: in_v_two
  doc: optionally -h2 arguments). All files must contain information for one
  type: long
  inputBinding:
    prefix: -v2
- id: in_vcf_one
  doc: "A phased, single sample VCF file to compute haplotype\nstatistics on."
  type: long[]
  inputBinding:
    prefix: --vcf1
- id: in_vcf_two
  doc: "A phased, single sample VCF file to use as the \"ground\ntruth\" haplotype."
  type: long[]
  inputBinding:
    prefix: --vcf2
- id: in_haplotype_blocks_one
  doc: "Override the haplotype information in \"-v1\" with the\ninformation in this\
    \ HapCUT2-format haplotype block\nfile. If this option is used, then the VCF specified\n\
    with -v1 MUST be the same VCF used with HapCUT2\n(--vcf) to produce the haplotype\
    \ block file!"
  type: long[]
  inputBinding:
    prefix: --haplotype_blocks1
- id: in_haplotype_blocks_two
  doc: "Override the haplotype information in \"-v2\" with the\ninformation in this\
    \ HapCUT2-format haplotype block\nfile. If this option is used, then the VCF specified\n\
    with -v2 MUST be the same VCF used with HapCUT2\n(--vcf) to produce the haplotype\
    \ block file!"
  type: long[]
  inputBinding:
    prefix: --haplotype_blocks2
- id: in_indels
  doc: "Use this flag to consider indel variants. Default:\nIndels ignored.\n"
  type: boolean
  inputBinding:
    prefix: --indels
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- calculate_haplotype_statistics.py
