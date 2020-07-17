class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/varscan_somatic.cwl
inputs:
- id: output_snp
  doc: '- Output file for SNP calls [output.snp]'
  type: boolean
  inputBinding:
    prefix: --output-snp
- id: output_in_del
  doc: '- Output file for indel calls [output.indel]'
  type: boolean
  inputBinding:
    prefix: --output-indel
- id: min_coverage
  doc: '- Minimum coverage in normal and tumor to call variant [8]'
  type: boolean
  inputBinding:
    prefix: --min-coverage
- id: min_coverage_normal
  doc: '- Minimum coverage in normal to call somatic [8]'
  type: boolean
  inputBinding:
    prefix: --min-coverage-normal
- id: min_coverage_tumor
  doc: '- Minimum coverage in tumor to call somatic [6]'
  type: boolean
  inputBinding:
    prefix: --min-coverage-tumor
- id: min_var_freq
  doc: '- Minimum variant frequency to call a heterozygote [0.20]'
  type: boolean
  inputBinding:
    prefix: --min-var-freq
- id: min_freq_for_hom
  doc: Minimum frequency to call homozygote [0.75]
  type: boolean
  inputBinding:
    prefix: --min-freq-for-hom
- id: normal_purity
  doc: '- Estimated purity (non-tumor content) of normal sample [1.00]'
  type: boolean
  inputBinding:
    prefix: --normal-purity
- id: tumor_purity
  doc: '- Estimated purity (tumor content) of tumor sample [1.00]'
  type: boolean
  inputBinding:
    prefix: --tumor-purity
- id: p_value
  doc: '- P-value threshold to call a heterozygote [0.99]'
  type: boolean
  inputBinding:
    prefix: --p-value
- id: somatic_p_value
  doc: '- P-value threshold to call a somatic site [0.05]'
  type: boolean
  inputBinding:
    prefix: --somatic-p-value
- id: strand_filter
  doc: '- If set to 1, removes variants with >90% strand bias [0]'
  type: boolean
  inputBinding:
    prefix: --strand-filter
- id: validation
  doc: '- If set to 1, outputs all compared positions even if non-variant'
  type: boolean
  inputBinding:
    prefix: --validation
- id: output_vcf
  doc: '- If set to 1, output VCF instead of VarScan native format'
  type: boolean
  inputBinding:
    prefix: --output-vcf
- id: normal_pile_up
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: tumor_pile_up
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- varscan
- somatic
