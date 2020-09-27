class: CommandLineTool
id: vtools_report_avg_depth.cwl
inputs:
- id: in_num_field
  doc: "Name of the field that holds sample variant count,\nwhich is the field name\
    \ for command 'vtools update\ntable --from_stat \"num=#(alt)\"'."
  type: long
  inputBinding:
    prefix: --num_field
- id: in_depth_field
  doc: "Name of the field that holds average depth of each\nvariant, which is the\
    \ field name for command 'vtools\nupdate table --from_stat \"meanDP=avg(DP_geno)\"\
    '."
  type: string
  inputBinding:
    prefix: --depth_field
- id: in_group_by
  doc: "[GROUP_BY [GROUP_BY ...]], --group-by [GROUP_BY [GROUP_BY ...]]\nOutput average\
    \ depth for each group, for example, '--\ngroup_by NUM_FIELD to output depth for\
    \ each sample\nvariant frequency (count)."
  type: boolean
  inputBinding:
    prefix: --group_by
- id: in_verbosity
  doc: "Output error and warning (0), info (1), debug (2) and\ntrace (3) information\
    \ to standard output (default to\n1).\n"
  type: string
  inputBinding:
    prefix: --verbosity
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- vtools_report
- avg_depth
