class: CommandLineTool
id: ../../../abundance_dist.py.cwl
inputs:
- id: info
  doc: ''
  type: boolean
  inputBinding:
    prefix: --info
- id: z
  doc: ''
  type: boolean
  inputBinding:
    prefix: -z
- id: s
  doc: ''
  type: boolean
  inputBinding:
    prefix: -s
- id: b
  doc: ''
  type: boolean
  inputBinding:
    prefix: -b
- id: f
  doc: ''
  type: boolean
  inputBinding:
    prefix: -f
- id: q
  doc: ''
  type: boolean
  inputBinding:
    prefix: -q
- id: input_count_graph_filename
  doc: The name of the input k-mer countgraph file.
  type: string
  inputBinding:
    position: 0
- id: input_sequence_filename
  doc: The name of the input FAST[AQ] sequence file.
  type: string
  inputBinding:
    position: 1
- id: output_histogram_filename
  doc: 'The columns are: (1) k-mer abundance, (2) k-mer count, (3) cumulative count,
    (4) fraction of total distinct k-mers.'
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- abundance-dist.py
