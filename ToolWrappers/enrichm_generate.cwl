class: CommandLineTool
id: enrichm_generate.cwl
inputs:
- id: in_log
  doc: Output logging information to this file.
  type: File
  inputBinding:
    prefix: --log
- id: in_verbosity
  doc: Level of verbosity (1 - 5 - default = 4) 5 = Very verbose, 1 = Silent
  type: long
  inputBinding:
    prefix: --verbosity
- id: in_output
  doc: Output directory
  type: Directory
  inputBinding:
    prefix: --output
- id: in_force
  doc: Overwrite previous run
  type: boolean
  inputBinding:
    prefix: --force
- id: in_input_matrix
  doc: input matrix of results
  type: string
  inputBinding:
    prefix: --input_matrix
- id: in_groups
  doc: defined outcomes to train the data to
  type: string
  inputBinding:
    prefix: --groups
- id: in_model_type
  doc: regressor or classifier
  type: string
  inputBinding:
    prefix: --model_type
- id: in_testing_portion
  doc: portion of the input data to use for testing (default = 0.2)
  type: double
  inputBinding:
    prefix: --testing_portion
- id: in_grid_search
  doc: grid search
  type: boolean
  inputBinding:
    prefix: --grid_search
- id: in_threads
  doc: number of threads to use for hyperparameterization (default = all available)
  type: long
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_log
  doc: Output logging information to this file.
  type: File
  outputBinding:
    glob: $(inputs.in_log)
- id: out_output
  doc: Output directory
  type: Directory
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- enrichm
- generate
