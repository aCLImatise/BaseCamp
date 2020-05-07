class: CommandLineTool
id: abundance_dist_single.py.cwl
inputs:
- id: input_sequence_filename
  doc: The name of the input FAST[AQ] sequence file.
  type: string
  inputBinding:
    position: 0
- id: output_histogram_filename
  doc: 'The name of the output histogram file. The columns are: (1) k-mer abundance,
    (2) k-mer count, (3) cumulative count, (4) fraction of total distinct k-mers.'
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- abundance-dist-single.py
