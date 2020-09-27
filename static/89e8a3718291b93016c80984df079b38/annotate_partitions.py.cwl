class: CommandLineTool
id: annotate_partitions.py.cwl
inputs:
- id: in_info
  doc: print citation information
  type: boolean
  inputBinding:
    prefix: --info
- id: in_k_size
  doc: 'k-mer size (default: 32) (default: 32)'
  type: long
  inputBinding:
    prefix: --ksize
- id: in_force
  doc: 'Overwrite output file if it exists (default: False)'
  type: File
  inputBinding:
    prefix: --force
- id: in_graph_base
  doc: basename for input and output files
  type: string
  inputBinding:
    position: 0
- id: in_input_sequence_filename
  doc: input FAST[AQ] sequences to annotate.
  type: string
  inputBinding:
    position: 1
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
- annotate-partitions.py
