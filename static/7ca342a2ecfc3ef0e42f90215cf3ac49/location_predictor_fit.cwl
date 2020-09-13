class: CommandLineTool
id: ../../../location_predictor_fit.cwl
inputs:
- id: in_input_file
  doc: 'Path to file containing input. (default: None)'
  type: File
  inputBinding:
    prefix: --input-file
- id: in_model_file
  doc: 'Path to a fit model file. (default: model)'
  type: File
  inputBinding:
    prefix: --model-file
- id: in_gene_domain_score_file_name
  doc: '... (default: gene_domain_score)'
  type: File
  inputBinding:
    prefix: --gene-domain-score-file-name
- id: in_output_dir
  doc: 'Path to output directory. (default: out)'
  type: File
  inputBinding:
    prefix: --output-dir
- id: in_selected_column_names
  doc: '.... (default: None)'
  type: string[]
  inputBinding:
    prefix: --selected-column-names
- id: in_window_size
  doc: '... (default: 2)'
  type: long
  inputBinding:
    prefix: --window-size
- id: in_complexity
  doc: '... (default: 4)'
  type: long
  inputBinding:
    prefix: --complexity
- id: in_nbits
  doc: '... (default: 20)'
  type: long
  inputBinding:
    prefix: --nbits
- id: in_n_discretization_levels
  doc: '... (default: 100)'
  type: long
  inputBinding:
    prefix: --n_discretization-levels
- id: in_label_size
  doc: '... (default: 5)'
  type: long
  inputBinding:
    prefix: --label-size
- id: in_min_subarray_size
  doc: '... (default: 3)'
  type: long
  inputBinding:
    prefix: --min-subarray-size
- id: in_max_subarray_size
  doc: "... (default: 15)\n"
  type: long
  inputBinding:
    prefix: --max-subarray-size
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: 'Path to output directory. (default: out)'
  type: File
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- location_predictor
- fit
