class: CommandLineTool
id: enrichm_generate.cwl
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
- id: input_matrix
  doc: input matrix of results
  type: string
  inputBinding:
    prefix: --input_matrix
- id: groups
  doc: defined outcomes to train the data to
  type: string
  inputBinding:
    prefix: --groups
- id: model_type
  doc: regressor or classifier
  type: string
  inputBinding:
    prefix: --model_type
- id: testing_portion
  doc: portion of the input data to use for testing (default = 0.2)
  type: string
  inputBinding:
    prefix: --testing_portion
- id: grid_search
  doc: grid search
  type: boolean
  inputBinding:
    prefix: --grid_search
- id: threads
  doc: number of threads to use for hyperparameterization (default = all available)
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- enrichm
- generate
