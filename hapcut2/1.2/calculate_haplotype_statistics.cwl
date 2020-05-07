class: CommandLineTool
id: calculate_haplotype_statistics.py.cwl
inputs:
- id: vcf1
  doc: A phased, single sample VCF file to compute haplotype statistics on.
  type: string[]
  inputBinding:
    prefix: --vcf1
- id: vcf2
  doc: A phased, single sample VCF file to use as the "ground truth" haplotype.
  type: string[]
  inputBinding:
    prefix: --vcf2
- id: haplotype_blocks_1
  doc: Override the haplotype information in "-v1" with the information in this HapCUT2-format
    haplotype block file. If this option is used, then the VCF specified with -v1
    MUST be the same VCF used with HapCUT2 (--vcf) to produce the haplotype block
    file!
  type: string[]
  inputBinding:
    prefix: --haplotype_blocks1
- id: haplotype_blocks_2
  doc: Override the haplotype information in "-v2" with the information in this HapCUT2-format
    haplotype block file. If this option is used, then the VCF specified with -v2
    MUST be the same VCF used with HapCUT2 (--vcf) to produce the haplotype block
    file!
  type: string[]
  inputBinding:
    prefix: --haplotype_blocks2
- id: indels
  doc: 'Use this flag to consider indel variants. Default: Indels ignored.'
  type: boolean
  inputBinding:
    prefix: --indels
outputs: []
cwlVersion: v1.1
baseCommand:
- calculate_haplotype_statistics.py
