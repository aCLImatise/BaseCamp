class: CommandLineTool
id: ../../../REPmask.cwl
inputs:
- id: verbose_mode_output
  doc: ': Verbose mode, output statistics as proceed.'
  type: boolean
  inputBinding:
    prefix: -v
- id: cutoff_depth_declaring
  doc: ': cutoff depth for declaring an interval repetitive.'
  type: boolean
  inputBinding:
    prefix: -c
- id: use_name_repeat
  doc: ': use this name as for the repeat mask track'
  type: boolean
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- REPmask
