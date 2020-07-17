class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/Bundler.cwl
inputs:
- id: b
  doc: ''
  type: boolean
  inputBinding:
    prefix: -b
- id: t
  doc: ''
  type: boolean
  inputBinding:
    prefix: -t
- id: an_k
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bank_name
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: ype
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: comma_separated_list_of_link_types_to_process
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- Bundler
