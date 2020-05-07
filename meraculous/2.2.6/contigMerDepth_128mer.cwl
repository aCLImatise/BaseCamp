class: CommandLineTool
id: contigMerDepth_128mer.cwl
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
- id: output_prefix
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: contigs_file
  doc: ''
  type: string
  inputBinding:
    position: 6
outputs: []
cwlVersion: v1.1
baseCommand:
- contigMerDepth_128mer
