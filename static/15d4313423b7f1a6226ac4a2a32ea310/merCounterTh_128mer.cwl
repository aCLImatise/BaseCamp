class: CommandLineTool
id: merCounterTh_128mer.cwl
inputs:
- id: in_mer_size
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_min_count_to_report
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_num_threads
  doc: ''
  type: string?
  inputBinding:
    position: 2
- id: in_prefix_list_to_hash
  doc: ''
  type: string?
  inputBinding:
    position: 3
- id: in_output_prefix
  doc: ''
  type: string?
  inputBinding:
    position: 4
- id: in_fast_q_descriptor_file
  doc: ''
  type: string?
  inputBinding:
    position: 5
- id: in_trim_flag
  doc: ''
  type: string?
  inputBinding:
    position: 6
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- merCounterTh_128mer
