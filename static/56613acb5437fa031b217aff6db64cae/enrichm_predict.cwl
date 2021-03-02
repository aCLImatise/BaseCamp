class: CommandLineTool
id: enrichm_predict.cwl
inputs:
- id: in_log
  doc: Output logging information to this file.
  type: File?
  inputBinding:
    prefix: --log
- id: in_verbosity
  doc: Level of verbosity (1 - 5 - default = 4) 5 = Very verbose, 1 = Silent
  type: long?
  inputBinding:
    prefix: --verbosity
- id: in_output
  doc: Output directory
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_force
  doc: Overwrite previous run
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_forester_model_directory
  doc: Pickled model to use
  type: Directory?
  inputBinding:
    prefix: --forester_model_directory
- id: in_input_matrix
  doc: "matrix of data to predict\n"
  type: string?
  inputBinding:
    prefix: --input_matrix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_log
  doc: Output logging information to this file.
  type: File?
  outputBinding:
    glob: $(inputs.in_log)
- id: out_output
  doc: Output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- enrichm
- predict
