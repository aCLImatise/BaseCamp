class: CommandLineTool
id: vtools_report_trans_ratio.cwl
inputs:
- id: in_num_field
  doc: "Name of the field that holds sample variant count,\nwhich is the field name\
    \ for command 'vtools update\ntable --from_stat \"num=#(alt)\"'."
  type: long?
  inputBinding:
    prefix: --num_field
- id: in_group_by
  doc: "[GROUP_BY [GROUP_BY ...]], --group-by [GROUP_BY [GROUP_BY ...]]\nOutput transition/transversion\
    \ rate for groups of\nvariants. e.g. --group_by num for each sample variant\n\
    frequency group."
  type: boolean?
  inputBinding:
    prefix: --group_by
- id: in_verbosity
  doc: "Output error and warning (0), info (1), debug (2) and\ntrace (3) information\
    \ to standard output (default to\n1).\n"
  type: string?
  inputBinding:
    prefix: --verbosity
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- vtools_report
- trans_ratio
