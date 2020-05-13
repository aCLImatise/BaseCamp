class: CommandLineTool
id: poppunk_tsne.cwl
inputs:
- id: distances
  doc: Prefix of input pickle and numpy file of pre- calculated distances
  type: string
  inputBinding:
    prefix: --distances
- id: output
  doc: Name of output file
  type: string
  inputBinding:
    prefix: --output
- id: perplexity
  doc: Perplexity used to generate t-SNE projection [default = 30]
  type: string
  inputBinding:
    prefix: --perplexity
- id: verbosity
  doc: Verbosity level for t-SNE (0-3) [default = 0]
  type: string
  inputBinding:
    prefix: --verbosity
outputs: []
cwlVersion: v1.1
baseCommand:
- poppunk_tsne
