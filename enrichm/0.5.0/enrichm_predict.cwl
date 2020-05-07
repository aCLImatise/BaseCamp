class: CommandLineTool
id: enrichm_predict.cwl
inputs:
- id: log
  doc: Output logging information to this file.
  type: string
  inputBinding:
    prefix: --log
- id: verbosity
  doc: Level of verbosity (1 - 5 - default = 4) 5 = Very verbose, 1 = Silent
  type: string
  inputBinding:
    prefix: --verbosity
- id: output
  doc: Output directory
  type: string
  inputBinding:
    prefix: --output
- id: force
  doc: Overwrite previous run
  type: boolean
  inputBinding:
    prefix: --force
- id: forester_model_directory
  doc: Pickled model to use
  type: string
  inputBinding:
    prefix: --forester_model_directory
- id: input_matrix
  doc: matrix of data to predict
  type: string
  inputBinding:
    prefix: --input_matrix
outputs: []
cwlVersion: v1.1
baseCommand:
- enrichm
- predict
