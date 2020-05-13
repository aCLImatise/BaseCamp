class: CommandLineTool
id: vtools_report_avg_depth.cwl
inputs:
- id: table
  doc: Variant table for which average depth are calculated.
  type: string
  inputBinding:
    position: 0
- id: num_field
  doc: Name of the field that holds sample variant count, which is the field name
    for command 'vtools update table --from_stat "num=#(alt)"'.
  type: string
  inputBinding:
    prefix: --num_field
- id: depth_field
  doc: Name of the field that holds average depth of each variant, which is the field
    name for command 'vtools update table --from_stat "meanDP=avg(DP_geno)"'.
  type: string
  inputBinding:
    prefix: --depth_field
- id: group_by
  doc: "[GROUP_BY [GROUP_BY ...]], --group-by [GROUP_BY [GROUP_BY ...]] Output average\
    \ depth for each group, for example, '-- group_by NUM_FIELD to output depth for\
    \ each sample variant frequency (count)."
  type: boolean
  inputBinding:
    prefix: --group_by
- id: v
  doc: '{0,1,2,3}, --verbosity {0,1,2,3} Output error and warning (0), info (1), debug
    (2) and trace (3) information to standard output (default to 1).'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- vtools_report
- avg_depth
