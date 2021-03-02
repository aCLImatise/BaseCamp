class: CommandLineTool
id: meraculousTh_128mer.cwl
inputs:
- id: in_u_fx_file_wildcard
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_mer_size
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_num_threads
  doc: ''
  type: string?
  inputBinding:
    position: 2
- id: in_output_file
  doc: ''
  type: string?
  inputBinding:
    position: 3
- id: in_expected_num_elements
  doc: ''
  type: string?
  inputBinding:
    position: 4
- id: in_min
  doc: ''
  type: long?
  inputBinding:
    position: 5
- id: in_contig
  doc: ''
  type: string?
  inputBinding:
    position: 6
- id: in_size
  doc: ''
  type: long?
  inputBinding:
    position: 7
- id: in_debug_mode
  doc: ''
  type: string?
  inputBinding:
    position: 8
- id: in_seed_list_filename
  doc: ''
  type: string?
  inputBinding:
    position: 9
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- meraculousTh_128mer
