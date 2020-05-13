class: CommandLineTool
id: halladata.cwl
inputs:
- id: verbose
  doc: additional output is printed
  type: boolean
  inputBinding:
    prefix: --verbose
- id: features
  doc: 'number of features in the input file D*N, Rows: D features and columns: N
    samples '
  type: string
  inputBinding:
    prefix: --features
- id: samples
  doc: 'number of samples in the input file D*N, Rows: D features and columns: N samples '
  type: string
  inputBinding:
    prefix: --samples
- id: clusters
  doc: 'number of blocks, default = min(number_features/2.0, math.log(number_features,2)*1.5) '
  type: string
  inputBinding:
    prefix: --clusters
- id: association
  doc: 'association type [sine, parabola, log, line, L, step, happy_face, default
    =parabola] '
  type: string
  inputBinding:
    prefix: --association
- id: distribution
  doc: 'Distribution [normal, uniform, default =uniform] '
  type: string
  inputBinding:
    prefix: --distribution
- id: noise_between
  doc: noise between associated blocks[0 is no noise, 1 is complete noise, default
    =0.25]
  type: string
  inputBinding:
    prefix: --noise-between
- id: noise_within
  doc: noise within blocks[0 is no noise, 1 is complete noise, default =0.25]
  type: string
  inputBinding:
    prefix: --noise-within
- id: output
  doc: the output directory
  type: string
  inputBinding:
    prefix: --output
- id: structure
  doc: 'structure [balanced, imbalanced, default =balanced] '
  type: string
  inputBinding:
    prefix: --structure
- id: cluster_percentage
  doc: 'structure [balanced, imbalanced, default =balanced] '
  type: string
  inputBinding:
    prefix: --cluster-percentage
outputs: []
cwlVersion: v1.1
baseCommand:
- halladata
