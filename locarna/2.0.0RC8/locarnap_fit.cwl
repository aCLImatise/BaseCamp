class: CommandLineTool
id: locarnap_fit.cwl
inputs:
- id: once_on
  doc: Fit a signal that is on only once
  type: boolean
  inputBinding:
    prefix: --once-on
- id: all_values
  doc: Show all function values of signal (instead of only ranges)
  type: boolean
  inputBinding:
    prefix: --all-values
- id: penalties
  doc: Input penalty file with sequence of numbers
  type: File
  inputBinding:
    prefix: --penalties
outputs: []
cwlVersion: v1.1
baseCommand:
- locarnap_fit
