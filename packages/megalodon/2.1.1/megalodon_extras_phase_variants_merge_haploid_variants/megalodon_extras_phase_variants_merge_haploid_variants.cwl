class: CommandLineTool
id: megalodon_extras_phase_variants_merge_haploid_variants.cwl
inputs:
- id: in_out_vcf
  doc: 'Output name for VCF. Default:'
  type: string
  inputBinding:
    prefix: --out-vcf
- id: in_diploid_called_variants
  doc: Phased variants from which the diploid calls are
  type: string
  inputBinding:
    position: 0
- id: in_derived_dot
  doc: haplotype1_variants   Variant file for haplotype 1.
  type: string
  inputBinding:
    position: 1
- id: in_haplotype_two_variants
  doc: Variant file for haplotype 2.
  type: long
  inputBinding:
    position: 2
- id: in_merged_haploid_variants_dot_vcf
  doc: --force-invalid-variant-processing
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- megalodon_extras
- phase_variants
- merge_haploid_variants
