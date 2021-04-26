class: CommandLineTool
id: akita_train.py.cwl
inputs:
- id: in_train_keras_fit
  doc: 'Train with Keras fit method [Default: False]'
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_output_directory_defaulttrainout
  doc: "Output directory for test statistics [Default:\ntrain_out]"
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_restore
  doc: 'Restore model and continue training [Default: none]'
  type: string?
  inputBinding:
    prefix: --restore
- id: in_trunk
  doc: 'Restore only model trunk [Default: False]'
  type: boolean?
  inputBinding:
    prefix: --trunk
- id: in_tfr_train
  doc: "Training TFR pattern string appended to\ndata_dir/tfrecords for subsetting\
    \ [Default: none]"
  type: string?
  inputBinding:
    prefix: --tfr_train
- id: in_tfr_eval
  doc: "Evaluation TFR pattern string appended to\ndata_dir/tfrecords for subsetting\
    \ [Default: none]\n"
  type: string?
  inputBinding:
    prefix: --tfr_eval
- id: in_data_one_dir
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory_defaulttrainout
  doc: "Output directory for test statistics [Default:\ntrain_out]"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory_defaulttrainout)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/basenji:0.5.1--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- akita_train.py
