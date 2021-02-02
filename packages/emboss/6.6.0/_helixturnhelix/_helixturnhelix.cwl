class: CommandLineTool
id: _helixturnhelix.cwl
inputs:
- id: in_mean
  doc: "float      [238.71] Mean value (Number from 1.000 to\n10000.000)"
  type: boolean
  inputBinding:
    prefix: -mean
- id: in_sd_value
  doc: "float      [293.61] Standard Deviation value (Number\nfrom 1.000 to 10000.000)"
  type: boolean
  inputBinding:
    prefix: -sdvalue
- id: in_mins_d
  doc: "float      [2.5] Minimum SD (Number from 0.000 to\n100.000)"
  type: boolean
  inputBinding:
    prefix: -minsd
- id: in_boolean_use_data
  doc: boolean    Use the old (1987) weight data
  type: boolean
  inputBinding:
    prefix: -eightyseven
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- _helixturnhelix
