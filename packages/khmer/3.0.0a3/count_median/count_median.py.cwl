class: CommandLineTool
id: count_median.py.cwl
inputs:
- id: in_info
  doc: print citation information
  type: boolean
  inputBinding:
    prefix: --info
- id: in_force
  doc: 'Overwrite output file if it exists (default: False)'
  type: File
  inputBinding:
    prefix: --force
- id: in_count_kmers_summary
  doc: Count k-mers summary stats for sequences
  type: string
  inputBinding:
    position: 0
- id: in_input_count_graph_filename
  doc: input k-mer countgraph filename
  type: string
  inputBinding:
    position: 0
- id: in_input_sequence_filename
  doc: input FAST[AQ] sequence filename
  type: string
  inputBinding:
    position: 1
- id: in_output_summary_filename
  doc: output summary filename
  type: string
  inputBinding:
    position: 2
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
- count-median.py
