class: CommandLineTool
id: mergraphTh_128mer.cwl
inputs:
- id: mer_count_file_prefix
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: mer_size
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: min_depth
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: prefix_list_to_hash
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: num_threads
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: qual_offset
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: output_prefix
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: input_descriptor_file
  doc: ''
  type: string
  inputBinding:
    position: 7
outputs: []
cwlVersion: v1.1
baseCommand:
- mergraphTh_128mer
