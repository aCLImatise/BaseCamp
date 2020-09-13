class: CommandLineTool
id: ../../../filter_stoptags.py.cwl
inputs:
- id: in_info
  doc: print citation information
  type: boolean
  inputBinding:
    prefix: --info
- id: in_k_size
  doc: 'k-mer size (default: 32)'
  type: long
  inputBinding:
    prefix: --ksize
- id: in_force
  doc: 'Overwrite output file if it exists (default: False)'
  type: File
  inputBinding:
    prefix: --force
- id: in_input_stop_tags_filename
  doc: input_sequence_filename
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_force
  doc: 'Overwrite output file if it exists (default: False)'
  type: File
  outputBinding:
    glob: $(inputs.in_force)
cwlVersion: v1.1
baseCommand:
- filter-stoptags.py
