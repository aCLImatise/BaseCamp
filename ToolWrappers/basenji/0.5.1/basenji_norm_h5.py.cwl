class: CommandLineTool
id: basenji_norm_h5.py.cwl
inputs:
- id: in_uniformly_sample_seq
  doc: 'Uniformly sample across the seq length [Default: 1]'
  type: long?
  inputBinding:
    prefix: -l
- id: in_mc
  doc: 'Monte carlo test iterations [Default: 0]'
  type: long?
  inputBinding:
    prefix: --mc
- id: in_output_directory_test
  doc: 'Output directory for test statistics [Default: test_out]'
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_rc
  doc: 'Average the fwd and rc predictions [Default: False]'
  type: boolean?
  inputBinding:
    prefix: --rc
- id: in_sample_sequences
  doc: 'Sample sequences [Default: 1.0]'
  type: double?
  inputBinding:
    prefix: -s
- id: in_save
  doc: 'Save predictions to HDF5. [Default: False]'
  type: boolean?
  inputBinding:
    prefix: --save
- id: in_shifts
  doc: 'Ensemble prediction shifts [Default: 0]'
  type: long?
  inputBinding:
    prefix: --shifts
- id: in_train
  doc: 'Process the training set [Default: False]'
  type: boolean?
  inputBinding:
    prefix: --train
- id: in_process_validation_set
  doc: 'Process the validation set [Default: False]'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_params_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_model_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_test_hdf_five_file
  doc: ''
  type: long
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory_test
  doc: 'Output directory for test statistics [Default: test_out]'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory_test)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/basenji:0.5.1--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- basenji_norm_h5.py
