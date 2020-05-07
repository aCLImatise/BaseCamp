class: CommandLineTool
id: label_exonexon.py.cwl
inputs:
- id: gtf
  doc: The input GTF file containing the genome annotation.
  type: string
  inputBinding:
    prefix: --gtf
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
- label_exonexon.py
