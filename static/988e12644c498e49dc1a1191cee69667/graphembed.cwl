class: CommandLineTool
id: graphembed.cwl
inputs:
- id: in_specify_input_file
  doc: Specify input data file in CSV format.
  type: File?
  inputBinding:
    prefix: -i
- id: in_specify_classes_data
  doc: Specify classes data file in CSV format.
  type: File?
  inputBinding:
    prefix: -t
- id: in_output_directory_name
  doc: 'Output directory name [default: out].'
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_class_confidence
  doc: "Confidence bias for clustering\n[default: 1.0]."
  type: double?
  inputBinding:
    prefix: --class_confidence
- id: in_number_links_closest
  doc: "Number of links towards closest neighbors\nwith same class [default: 5]."
  type: long?
  inputBinding:
    prefix: -k
- id: in_number_links_denser
  doc: "Number of links towards denser neighbors\nwith a different class [default:\
    \ 1]"
  type: long?
  inputBinding:
    prefix: -d
- id: in_number_limit_thehorizon
  doc: "Number of nearest neighbors to limit the\nhorizon to limit search of denser\
    \ neighbors\nof a different class [default: 10]"
  type: long?
  inputBinding:
    prefix: -z
- id: in_number_mutual_nearest
  doc: "Number of mutual nearest neighbors that\ndefine outlier instances [default:\
    \ 0]"
  type: long?
  inputBinding:
    prefix: -l
- id: in_normalization
  doc: Convert data matrix to normalized matrix.
  type: boolean?
  inputBinding:
    prefix: --normalization
- id: in_feature_selection
  doc: Select most discriminative features.
  type: boolean?
  inputBinding:
    prefix: --feature_selection
- id: in_correlation_transformation
  doc: Convert data matrix to corr coeff matrix.
  type: boolean?
  inputBinding:
    prefix: --correlation_transformation
- id: in_min_threshold
  doc: 'Min num instances per class [default: 5]'
  type: long?
  inputBinding:
    prefix: --min_threshold
- id: in_max_threshold
  doc: 'Max num instances per class [default: 400]'
  type: long?
  inputBinding:
    prefix: --max_threshold
- id: in_random_state
  doc: 'Random seed [default: 1]'
  type: long?
  inputBinding:
    prefix: --random_state
- id: in_display
  doc: Display graphs on terminal.
  type: boolean?
  inputBinding:
    prefix: --display
- id: in_figure_size
  doc: 'Figure size [default: 15].'
  type: long?
  inputBinding:
    prefix: --figure_size
- id: in_cmap_name
  doc: 'Color scheme [default: gist_ncar].'
  type: string?
  inputBinding:
    prefix: --cmap_name
- id: in_do_not_add_timestamp
  doc: "Do not use timestamp as suffix for\noutput directory name."
  type: Directory?
  inputBinding:
    prefix: --do_not_add_timestamp
- id: in_verbose
  doc: Print more text.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_graph_embed
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory_name
  doc: 'Output directory name [default: out].'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory_name)
- id: out_do_not_add_timestamp
  doc: "Do not use timestamp as suffix for\noutput directory name."
  type: Directory?
  outputBinding:
    glob: $(inputs.in_do_not_add_timestamp)
hints: []
cwlVersion: v1.1
baseCommand:
- graphembed
