class: CommandLineTool
id: ../../../graphembed.cwl
inputs:
- id: specify_input_data
  doc: Specify input data file in CSV format.
  type: File
  inputBinding:
    prefix: -i
- id: specify_classes_data
  doc: Specify classes data file in CSV format.
  type: File
  inputBinding:
    prefix: -t
- id: output_directory_name
  doc: 'Output directory name [default: out].'
  type: string
  inputBinding:
    prefix: -o
- id: class_confidence
  doc: 'Confidence bias for clustering [default: 1.0].'
  type: string
  inputBinding:
    prefix: --class_confidence
- id: number_links_closest
  doc: 'Number of links towards closest neighbors with same class [default: 5].'
  type: string
  inputBinding:
    prefix: -k
- id: number_links_denser
  doc: 'Number of links towards denser neighbors with a different class [default:
    1]'
  type: string
  inputBinding:
    prefix: -d
- id: number_limit_horizon
  doc: 'Number of nearest neighbors to limit the horizon to limit search of denser
    neighbors of a different class [default: 10]'
  type: string
  inputBinding:
    prefix: -z
- id: number_mutual_nearest
  doc: 'Number of mutual nearest neighbors that define outlier instances [default:
    0]'
  type: string
  inputBinding:
    prefix: -l
- id: normalization
  doc: Convert data matrix to normalized matrix.
  type: boolean
  inputBinding:
    prefix: --normalization
- id: feature_selection
  doc: Select most discriminative features.
  type: boolean
  inputBinding:
    prefix: --feature_selection
- id: correlation_transformation
  doc: Convert data matrix to corr coeff matrix.
  type: boolean
  inputBinding:
    prefix: --correlation_transformation
- id: min_threshold
  doc: 'Min num instances per class [default: 5]'
  type: string
  inputBinding:
    prefix: --min_threshold
- id: max_threshold
  doc: 'Max num instances per class [default: 400]'
  type: string
  inputBinding:
    prefix: --max_threshold
- id: random_state
  doc: 'Random seed [default: 1]'
  type: string
  inputBinding:
    prefix: --random_state
- id: display
  doc: Display graphs on terminal.
  type: boolean
  inputBinding:
    prefix: --display
- id: figure_size
  doc: 'Figure size [default: 15].'
  type: string
  inputBinding:
    prefix: --figure_size
- id: cmap_name
  doc: 'Color scheme [default: gist_ncar].'
  type: string
  inputBinding:
    prefix: --cmap_name
- id: do_not_add_timestamp
  doc: Do not use timestamp as suffix for output directory name.
  type: boolean
  inputBinding:
    prefix: --do_not_add_timestamp
- id: verbose
  doc: Print more text.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: graph_embed
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- graphembed
