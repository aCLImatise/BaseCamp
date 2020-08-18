class: CommandLineTool
id: ../../../alistat.cwl
inputs:
- id: report_persequence_info
  doc: ': report per-sequence info, not just a summary'
  type: boolean
  inputBinding:
    prefix: -a
- id: fast_estimate_average
  doc: ': fast: estimate average %id by sampling (not compatible with -a)'
  type: boolean
  inputBinding:
    prefix: -f
- id: quiet_suppress_verbose
  doc: ': quiet: suppress verbose header'
  type: boolean
  inputBinding:
    prefix: -q
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: alignment_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- alistat
