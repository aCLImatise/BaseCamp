class: CommandLineTool
id: varscan_somatic.cwl
inputs:
- id: output_snp
  doc: for SNP calls [output.snp]
  type: File
  inputBinding:
    prefix: --output-snp
- id: output_in_del
  doc: for indel calls [output.indel]
  type: File
  inputBinding:
    prefix: --output-indel
- id: min_coverage
  doc: in normal and tumor to call variant [8]
  type: string
  inputBinding:
    prefix: --min-coverage
- id: min_coverage_normal
  doc: in normal to call somatic [8]
  type: string
  inputBinding:
    prefix: --min-coverage-normal
- id: min_coverage_tumor
  doc: in tumor to call somatic [6]
  type: string
  inputBinding:
    prefix: --min-coverage-tumor
- id: min_var_freq
  doc: frequency to call a heterozygote [0.20]
  type: string
  inputBinding:
    prefix: --min-var-freq
- id: min_freq_for_hom
  doc: Minimum frequency to call homozygote [0.75]
  type: boolean
  inputBinding:
    prefix: --min-freq-for-hom
- id: normal_purity
  doc: (non-tumor content) of normal sample [1.00]
  type: string
  inputBinding:
    prefix: --normal-purity
- id: tumor_purity
  doc: (tumor content) of tumor sample [1.00]
  type: string
  inputBinding:
    prefix: --tumor-purity
- id: p_value
  doc: to call a heterozygote [0.99]
  type: string
  inputBinding:
    prefix: --p-value
- id: somatic_p_value
  doc: to call a somatic site [0.05]
  type: string
  inputBinding:
    prefix: --somatic-p-value
- id: strand_filter
  doc: to 1, removes variants with >90% strand bias [0]
  type: string
  inputBinding:
    prefix: --strand-filter
- id: validation
  doc: to 1, outputs all compared positions even if non-variant
  type: string
  inputBinding:
    prefix: --validation
- id: output_vcf
  doc: to 1, output VCF instead of VarScan native format
  type: string
  inputBinding:
    prefix: --output-vcf
outputs: []
cwlVersion: v1.1
baseCommand:
- varscan
- somatic
