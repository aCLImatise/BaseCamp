class: CommandLineTool
id: vtools_report_variant_stat.cwl
inputs:
- id: table
  doc: Variant table for which variant metrics are calculated.
  type: string
  inputBinding:
    position: 0
- id: s
  doc: "[SAMPLES [SAMPLES ...]], --samples [SAMPLES [SAMPLES ...]] Limiting variants\
    \ from samples that match conditions that use columns shown in command 'vtools\
    \ show sample' (e.g. 'aff=1', 'filename like \"MG%\"'). If this parameter is specified\
    \ without a value, variants belonging to any of the samples will be counted. If\
    \ this parameter is left unspecified, all variants, including those that do not\
    \ belong to any samples will be counted."
  type: boolean
  inputBinding:
    prefix: -s
- id: g
  doc: "[GROUP_BY [GROUP_BY ...]], --group_by [GROUP_BY [GROUP_BY ...]], --group-by\
    \ [GROUP_BY [GROUP_BY ...]] Group samples by certain conditions such as 'aff=1'.\
    \ A common usage is to group variants by 'filename' and 'sample_name' so that\
    \ variant statistics are outputted for each sample."
  type: boolean
  inputBinding:
    prefix: -g
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
- variant_stat
