class: CommandLineTool
id: filter_pairs.py.cwl
inputs:
- id: input
  doc: The input file containing the fusion (chromosomal) coordinates for each fusion
    genes.
  type: string
  inputBinding:
    prefix: --input
- id: output_good
  doc: The output file where the frame predictions are written.
  type: string
  inputBinding:
    prefix: --output_good
- id: output_bad
  doc: The output file where the frame predictions are written.
  type: string
  inputBinding:
    prefix: --output_bad
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
- filter_pairs.py
