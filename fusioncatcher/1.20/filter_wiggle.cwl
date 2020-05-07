class: CommandLineTool
id: filter_wiggle.py.cwl
inputs:
- id: input
  doc: The input file containing the fusion (chromosomal) coordinates for each fusion
    genes.
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: The output file where the frame predictions are written.
  type: string
  inputBinding:
    prefix: --output
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
- filter-wiggle.py
