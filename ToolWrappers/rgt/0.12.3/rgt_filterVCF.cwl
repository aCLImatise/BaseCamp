class: CommandLineTool
id: rgt_filterVCF.cwl
inputs:
- id: in_t_mq
  doc: 'Threshold for mapping quality (MQ) [default: 20]'
  type: long?
  inputBinding:
    prefix: --t-mq
- id: in_t_dp
  doc: 'Threshold for combined depth (DP) [default: 20]'
  type: long?
  inputBinding:
    prefix: --t-dp
- id: in_dbsnp
  doc: 'Check for dbSNP [default: none]'
  type: string?
  inputBinding:
    prefix: --dbSNP
- id: in_list_wt
  doc: 'List of WildTypes [default: none]'
  type: string?
  inputBinding:
    prefix: --list-WT
- id: in_bed
  doc: 'Filter against BED file (e.g. TFBS) [default: none]'
  type: File?
  inputBinding:
    prefix: --bed
- id: in_max_density
  doc: 'Perform max. density search [default: False]'
  type: boolean?
  inputBinding:
    prefix: --max-density
- id: in_lower_bound
  doc: "lower window bound for max. density search [default:\n15000]"
  type: long?
  inputBinding:
    prefix: --lowerBound
- id: in_upper_bound
  doc: "upper window bound for max. density search [default:\n30000]\n"
  type: long?
  inputBinding:
    prefix: --upperBound
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rgt-filterVCF
