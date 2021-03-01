class: CommandLineTool
id: psa2msa.cwl
inputs:
- id: in_replace_periods_dashes
  doc: ': replace periods by dashes on output.'
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_replace_upper_case_letters
  doc: ': replace upper case letters by lower case.'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_replace_dashes_periods
  doc: ': replace dashes by periods on output.'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_replace_lower_case_letters
  doc: ': replace lower case letters by upper case.'
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_valuemaximal_insertion_length
  doc: "<value>:\nmaximal insertion length (default: -1)."
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_valuespecifies_output_width
  doc: "<value>:\nspecifies the output width (default: 60)."
  type: boolean?
  inputBinding:
    prefix: -W
- id: in_dhl_pum_w
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -dhlpuMW
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- psa2msa
