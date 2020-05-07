class: CommandLineTool
id: meraculousTh_128mer.cwl
inputs:
- id: u_fx_file_wildcard
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: mer_size
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: num_threads
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: expected_num_elements
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: min
  doc: ''
  type: long
  inputBinding:
    position: 5
- id: contig
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: size
  doc: ''
  type: long
  inputBinding:
    position: 7
- id: debug_mode
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: seed_list_filename
  doc: ''
  type: string
  inputBinding:
    position: 9
outputs: []
cwlVersion: v1.1
baseCommand:
- meraculousTh_128mer
