class: CommandLineTool
id: location_predictor_fit.cwl
inputs:
- id: input_file
  doc: 'Path to file containing input. (default: None)'
  type: string
  inputBinding:
    prefix: --input-file
- id: model_file
  doc: 'Path to a fit model file. (default: model)'
  type: string
  inputBinding:
    prefix: --model-file
- id: gene_domain_score_file_name
  doc: '... (default: gene_domain_score)'
  type: string
  inputBinding:
    prefix: --gene-domain-score-file-name
- id: output_dir
  doc: 'Path to output directory. (default: out)'
  type: string
  inputBinding:
    prefix: --output-dir
- id: selected_column_names
  doc: '.... (default: None)'
  type: string[]
  inputBinding:
    prefix: --selected-column-names
- id: window_size
  doc: '... (default: 2)'
  type: string
  inputBinding:
    prefix: --window-size
- id: complexity
  doc: '... (default: 4)'
  type: string
  inputBinding:
    prefix: --complexity
- id: nbits
  doc: '... (default: 20)'
  type: string
  inputBinding:
    prefix: --nbits
- id: n_discretization_levels
  doc: '... (default: 100)'
  type: string
  inputBinding:
    prefix: --n_discretization-levels
- id: label_size
  doc: '... (default: 5)'
  type: string
  inputBinding:
    prefix: --label-size
- id: min_subarray_size
  doc: '... (default: 3)'
  type: long
  inputBinding:
    prefix: --min-subarray-size
- id: max_subarray_size
  doc: '... (default: 15)'
  type: long
  inputBinding:
    prefix: --max-subarray-size
outputs: []
cwlVersion: v1.1
baseCommand:
- location_predictor
- fit
