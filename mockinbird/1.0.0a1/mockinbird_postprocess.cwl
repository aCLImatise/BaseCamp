class: CommandLineTool
id: mockinbird_postprocess.cwl
inputs:
- id: preprocess_dir
  doc: folder to files created by the preprocessing
  type: string
  inputBinding:
    position: 0
- id: output_dir
  doc: output directory - will be created if it does not exist
  type: string
  inputBinding:
    position: 1
- id: config_file
  doc: path to the postprocessing config file
  type: string
  inputBinding:
    position: 2
- id: prefix
  doc: 'preprocessing filename prefix - only required if there are multiple table
    files in the specified preprocess directory (default: None)'
  type: string
  inputBinding:
    prefix: --prefix
- id: log_level
  doc: 'verbosity level of the logger (default: info)'
  type: string
  inputBinding:
    prefix: --log_level
outputs: []
cwlVersion: v1.1
baseCommand:
- mockinbird
- postprocess
