class: CommandLineTool
id: psa2msa.cwl
inputs:
- id: d
  doc: ': replace periods by dashes on output.'
  type: boolean
  inputBinding:
    prefix: -d
- id: l
  doc: ': replace upper case letters by lower case.'
  type: boolean
  inputBinding:
    prefix: -l
- id: p
  doc: ': replace dashes by periods on output.'
  type: boolean
  inputBinding:
    prefix: -p
- id: u
  doc: ': replace lower case letters by upper case.'
  type: boolean
  inputBinding:
    prefix: -u
- id: m
  doc: '<value>: maximal insertion length (default: -1).'
  type: boolean
  inputBinding:
    prefix: -M
- id: w
  doc: '<value>: specifies the output width (default: 60).'
  type: boolean
  inputBinding:
    prefix: -W
outputs: []
cwlVersion: v1.1
baseCommand:
- psa2msa
