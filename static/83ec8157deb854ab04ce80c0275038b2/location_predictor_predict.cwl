class: CommandLineTool
id: location_predictor_predict.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- location_predictor
- predict
