class: CommandLineTool
id: inspect_fusion_sequences.py.cwl
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
- id: overlap
  doc: The length of region where the two consecutive windows are overlapping. Default
    is 12.
  type: string
  inputBinding:
    prefix: --overlap
- id: length
  doc: The length of the sliding window. Default is 24.
  type: string
  inputBinding:
    prefix: --length
- id: km_er
  doc: The length of the kmer used in computing the codelength. Default is 2.
  type: string
  inputBinding:
    prefix: --kmer
- id: poly
  doc: The minimum length of the polyN. Default is 15.
  type: string
  inputBinding:
    prefix: --poly
- id: threshold
  doc: Any window which compresses less this threshold is considered to contain a
    short tandem repeat and the read will be filtered out. Default is 1.4.
  type: string
  inputBinding:
    prefix: --threshold
- id: threshold_2
  doc: Any window which compresses less this threshold is considered to contain a
    short tandem repeat and the read will be filtered out. Default is 4.5.
  type: string
  inputBinding:
    prefix: --threshold2
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
- inspect_fusion_sequences.py
