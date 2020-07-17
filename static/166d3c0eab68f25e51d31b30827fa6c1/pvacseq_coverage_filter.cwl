class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pvacseq_coverage_filter.cwl
inputs:
- id: normal_cov
  doc: 'Normal Coverage Cutoff. Sites above this cutoff will be considered. Default:
    5'
  type: string
  inputBinding:
    prefix: --normal-cov
- id: t_dna_cov
  doc: 'Tumor DNA Coverage Cutoff. Sites above this cutoff will be considered. Default:
    10'
  type: string
  inputBinding:
    prefix: --tdna-cov
- id: trna_cov
  doc: 'Tumor RNA Coverage Cutoff. Sites above this cutoff will be considered. Default:
    10'
  type: string
  inputBinding:
    prefix: --trna-cov
- id: normal_vaf
  doc: 'Normal VAF Cutoff. Sites BELOW this cutoff in normal will be considered. Default:
    2'
  type: string
  inputBinding:
    prefix: --normal-vaf
- id: t_dna_vaf
  doc: 'Tumor DNA VAF Cutoff. Sites above this cutoff will be considered. Default:
    40'
  type: string
  inputBinding:
    prefix: --tdna-vaf
- id: trna_vaf
  doc: 'Tumor RNA VAF Cutoff. Sites above this cutoff will be considered. Default:
    40'
  type: string
  inputBinding:
    prefix: --trna-vaf
- id: expn_val
  doc: 'Gene and Transcript Expression cutoff. Sites above this cutoff will be consideredDefault:
    1'
  type: string
  inputBinding:
    prefix: --expn-val
outputs: []
cwlVersion: v1.1
baseCommand:
- pvacseq
- coverage_filter
