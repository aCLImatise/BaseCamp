class: CommandLineTool
id: vtools_report_variant_stat.cwl
inputs:
- id: in_limiting_variants_samples
  doc: "[SAMPLES [SAMPLES ...]], --samples [SAMPLES [SAMPLES ...]]\nLimiting variants\
    \ from samples that match conditions\nthat use columns shown in command 'vtools\
    \ show sample'\n(e.g. 'aff=1', 'filename like \"MG%\"'). If this\nparameter is\
    \ specified without a value, variants\nbelonging to any of the samples will be\
    \ counted. If\nthis parameter is left unspecified, all variants,\nincluding those\
    \ that do not belong to any samples will\nbe counted."
  type: boolean
  inputBinding:
    prefix: -s
- id: in_group_samples_certain
  doc: "[GROUP_BY [GROUP_BY ...]], --group_by [GROUP_BY [GROUP_BY ...]], --group-by\
    \ [GROUP_BY [GROUP_BY ...]]\nGroup samples by certain conditions such as 'aff=1'.\
    \ A\ncommon usage is to group variants by 'filename' and\n'sample_name' so that\
    \ variant statistics are outputted\nfor each sample."
  type: boolean
  inputBinding:
    prefix: -g
- id: in_verbosity
  doc: "Output error and warning (0), info (1), debug (2) and\ntrace (3) information\
    \ to standard output (default to\n1).\n"
  type: string
  inputBinding:
    prefix: --verbosity
- id: in_calculated_dot
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- vtools_report
- variant_stat
