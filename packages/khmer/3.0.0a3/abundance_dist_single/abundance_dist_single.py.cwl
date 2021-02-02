class: CommandLineTool
id: abundance_dist_single.py.cwl
inputs:
- id: in_k
  doc: ''
  type: long
  inputBinding:
    prefix: -k
- id: in_info
  doc: ''
  type: boolean
  inputBinding:
    prefix: --info
- id: in_input_sequence_filename
  doc: The name of the input FAST[AQ] sequence file.
  type: string
  inputBinding:
    position: 0
- id: in_output_histogram_filename
  doc: "The name of the output histogram file. The columns\nare: (1) k-mer abundance,\
    \ (2) k-mer count, (3)\ncumulative count, (4) fraction of total distinct\nk-mers."
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- abundance-dist-single.py
