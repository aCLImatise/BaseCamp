class: CommandLineTool
id: filter_fusion_sequences.py.cwl
inputs:
- id: input
  doc: The input file containing the fusion (chromosomal) coordinates for each fusion
    genes.
  type: string
  inputBinding:
    prefix: --input
- id: banned
  doc: The input file containing the banned fusion sequences.
  type: string
  inputBinding:
    prefix: --banned
- id: output
  doc: The output file where the frame predictions are written.
  type: string
  inputBinding:
    prefix: --output
- id: removed
  doc: The output file where the removed fusions are written.
  type: string
  inputBinding:
    prefix: --removed
- id: window
  doc: The length of the window. Default is 30.
  type: string
  inputBinding:
    prefix: --window
- id: quiet
  doc: Do not print status messages to stdout.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: author
  doc: 'Daniel Nicorici, E-mail: Daniel.Nicorici@gmail.com'
  type: string
  inputBinding:
    prefix: --author
outputs: []
cwlVersion: v1.1
baseCommand:
- filter_fusion_sequences.py
