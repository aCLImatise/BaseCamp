class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/cluster_butina_matrix.cwl
inputs:
- id: input
  doc: Input file, if not defined the STDIN is used
  type: string
  inputBinding:
    prefix: --input
- id: in_format
  doc: Input format. When using STDIN this must be specified.
  type: string
  inputBinding:
    prefix: --informat
- id: output
  doc: Base name for output file (no extension). If not defined then SDTOUT is used
    for the structures and output is used as base name of the other files.
  type: string
  inputBinding:
    prefix: --output
- id: out_format
  doc: Output format. Defaults to 'tsv'.
  type: string
  inputBinding:
    prefix: --outformat
- id: meta
  doc: Write metadata and metrics files
  type: boolean
  inputBinding:
    prefix: --meta
- id: threshold
  doc: Similarity clustering threshold (1.0 means identical)
  type: string
  inputBinding:
    prefix: --threshold
- id: matrix_threshold
  doc: Threshold for outputting values (1.0 means identical)
  type: string
  inputBinding:
    prefix: --matrixThreshold
- id: descriptor
  doc: descriptor or fingerprint type (default rdkit)
  type: string
  inputBinding:
    prefix: --descriptor
- id: metric
  doc: similarity metric (default tanimoto)
  type: string
  inputBinding:
    prefix: --metric
- id: quiet
  doc: Quiet mode
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- cluster_butina_matrix
