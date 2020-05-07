class: CommandLineTool
id: filter_splits.py.cwl
inputs:
- id: input
  doc: The input file containing the fusion (chromosomal) coordinates for each fusion
    genes.
  type: string
  inputBinding:
    prefix: --input
- id: extra
  doc: The input file containing the fusion (chromosomal) coordinates for each fusion
    genes.
  type: string
  inputBinding:
    prefix: --extra
- id: output
  doc: The output file where the frame predictions are written.
  type: string
  inputBinding:
    prefix: --output
- id: map
  doc: The output file where the frame predictions are written.
  type: string
  inputBinding:
    prefix: --map
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
- filter_splits.py
