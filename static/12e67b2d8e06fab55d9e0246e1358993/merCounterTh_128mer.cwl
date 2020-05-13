class: CommandLineTool
id: merCounterTh_128mer.cwl
inputs:
- id: mer_size
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: min_count_to_report
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: num_threads
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: prefix_list_to_hash
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: output_prefix
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: fast_q_descriptor_file
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: trim_flag
  doc: ''
  type: string
  inputBinding:
    position: 6
outputs: []
cwlVersion: v1.1
baseCommand:
- merCounterTh_128mer
