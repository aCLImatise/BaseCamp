class: CommandLineTool
id: load_into_counting.py.cwl
inputs:
- id: output_count_graph_filename
  doc: The name of the file to write the k-mer countgraph to.
  type: string
  inputBinding:
    position: 0
- id: input_sequence_filename
  doc: The names of one or more FAST[AQ] input sequence files.
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- load-into-counting.py
