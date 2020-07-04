class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/psa2msa.cwl
inputs:
- id: replace_periods_dashes
  doc: ': replace periods by dashes on output.'
  type: boolean
  inputBinding:
    prefix: -d
- id: replace_upper_case_letters
  doc: ': replace upper case letters by lower case.'
  type: boolean
  inputBinding:
    prefix: -l
- id: replace_dashes_periods
  doc: ': replace dashes by periods on output.'
  type: boolean
  inputBinding:
    prefix: -p
- id: replace_lower_case_letters
  doc: ': replace lower case letters by upper case.'
  type: boolean
  inputBinding:
    prefix: -u
- id: value_maximal_insertion
  doc: '<value>: maximal insertion length (default: -1).'
  type: boolean
  inputBinding:
    prefix: -M
- id: value_specifies_default
  doc: '<value>: specifies the output width (default: 60).'
  type: boolean
  inputBinding:
    prefix: -W
- id: dhl_pum_w
  doc: ''
  type: boolean
  inputBinding:
    prefix: -dhlpuMW
outputs: []
cwlVersion: v1.1
baseCommand:
- psa2msa
