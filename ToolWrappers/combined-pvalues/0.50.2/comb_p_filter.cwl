class: CommandLineTool
id: comb_p_filter.cwl
inputs:
- id: in_pvalue_column_pbed
  doc: p-value column from `p_bed`
  type: string?
  inputBinding:
    prefix: -p
- id: in_tstatistic_directionality_pbed
  doc: t-statistic or directionality from p_bed
  type: string?
  inputBinding:
    prefix: -t
- id: in_coef
  doc: name of coefficient column in BED
  type: string?
  inputBinding:
    prefix: --coef
- id: in_filter
  doc: don't print row if there's a swith in t-scores
  type: boolean?
  inputBinding:
    prefix: --filter
- id: in_max_p
  doc: filter regions with any p-value > this value
  type: long?
  inputBinding:
    prefix: --max-p
- id: in_region_p
  doc: filter regions with combined p-value > this value
  type: string?
  inputBinding:
    prefix: --region-p
- id: in_region_bed
  doc: file containing the regions
  type: string
  inputBinding:
    position: 0
- id: in_p_bed
  doc: file containing the raw p-values
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- comb-p
- filter
