class: CommandLineTool
id: mergraphTh_56mer.cwl
inputs:
- id: in_mer_count_file_prefix
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_mer_size
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_min_depth
  doc: ''
  type: string?
  inputBinding:
    position: 2
- id: in_prefix_list_to_hash
  doc: ''
  type: string?
  inputBinding:
    position: 3
- id: in_num_threads
  doc: ''
  type: string?
  inputBinding:
    position: 4
- id: in_qual_offset
  doc: ''
  type: string?
  inputBinding:
    position: 5
- id: in_output_prefix
  doc: ''
  type: string?
  inputBinding:
    position: 6
- id: in_input_descriptor_file
  doc: ''
  type: string?
  inputBinding:
    position: 7
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mergraphTh_56mer
