class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/Assemblytics_max_size.cwl
inputs:
- id: assembly_tics
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: delta
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_prefix
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: unique_length_required
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: min_size
  doc: ''
  type: long
  inputBinding:
    position: 4
- id: max_size
  doc: ''
  type: long
  inputBinding:
    position: 5
outputs: []
cwlVersion: v1.1
baseCommand:
- Assemblytics
- max_size
