class: CommandLineTool
id: halladata.cwl
inputs:
- id: in_verbose
  doc: additional output is printed
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_features
  doc: 'number of features in the input file D*N, Rows: D features and columns: N
    samples'
  type: long?
  inputBinding:
    prefix: --features
- id: in_samples
  doc: 'number of samples in the input file D*N, Rows: D features and columns: N samples'
  type: long?
  inputBinding:
    prefix: --samples
- id: in_clusters
  doc: number of blocks, default = min(number_features/2.0, math.log(number_features,2)*1.5)
  type: long?
  inputBinding:
    prefix: --clusters
- id: in_association
  doc: association type [sine, parabola, log, line, L, step, happy_face, default =parabola]
  type: string?
  inputBinding:
    prefix: --association
- id: in_distribution
  doc: Distribution [normal, uniform, default =uniform]
  type: string?
  inputBinding:
    prefix: --distribution
- id: in_noise_between
  doc: noise between associated blocks[0 is no noise, 1 is complete noise, default
    =0.25]
  type: double?
  inputBinding:
    prefix: --noise-between
- id: in_noise_within
  doc: noise within blocks[0 is no noise, 1 is complete noise, default =0.25]
  type: double?
  inputBinding:
    prefix: --noise-within
- id: in_output
  doc: the output directory
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_structure
  doc: structure [balanced, imbalanced, default =balanced]
  type: string?
  inputBinding:
    prefix: --structure
- id: in_cluster_percentage
  doc: "structure [balanced, imbalanced, default =balanced]\n"
  type: string?
  inputBinding:
    prefix: --cluster-percentage
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: the output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- halladata
