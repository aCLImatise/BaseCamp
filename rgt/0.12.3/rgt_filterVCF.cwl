class: CommandLineTool
id: rgt_filterVCF.cwl
inputs:
- id: t_mq
  doc: 'Threshold for mapping quality (MQ) [default: 20]'
  type: string
  inputBinding:
    prefix: --t-mq
- id: t_dp
  doc: 'Threshold for combined depth (DP) [default: 20]'
  type: string
  inputBinding:
    prefix: --t-dp
- id: dbsnp
  doc: 'Check for dbSNP [default: none]'
  type: string
  inputBinding:
    prefix: --dbSNP
- id: list_wt
  doc: 'List of WildTypes [default: none]'
  type: string
  inputBinding:
    prefix: --list-WT
- id: bed
  doc: 'Filter against BED file (e.g. TFBS) [default: none]'
  type: string
  inputBinding:
    prefix: --bed
- id: max_density
  doc: 'Perform max. density search [default: False]'
  type: boolean
  inputBinding:
    prefix: --max-density
- id: lower_bound
  doc: 'lower window bound for max. density search [default: 15000]'
  type: string
  inputBinding:
    prefix: --lowerBound
- id: upper_bound
  doc: 'upper window bound for max. density search [default: 30000]'
  type: string
  inputBinding:
    prefix: --upperBound
outputs: []
cwlVersion: v1.1
baseCommand:
- rgt-filterVCF
