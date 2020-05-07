class: CommandLineTool
id: rgt_hint_training.cwl
inputs:
- id: annotate_file
  doc: A annotate file containing all the states.
  type: string
  inputBinding:
    prefix: --annotate-file
- id: bias_table
  doc: ',FILE1_R'
  type: File
  inputBinding:
    prefix: --bias-table
- id: semi_supervised
  doc: If used, HMM model will be trained using semi- supervised learning.
  type: boolean
  inputBinding:
    prefix: --semi-supervised
- id: signal_file
  doc: The txt file containing the DNase-seq or ATAC-seq signals used to train HMM
    model.
  type: File
  inputBinding:
    prefix: --signal-file
- id: num_states
  doc: The states number of HMM model.
  type: long
  inputBinding:
    prefix: --num-states
- id: output_location
  doc: Path where the output bias table files will be written.
  type: File
  inputBinding:
    prefix: --output-location
- id: output_prefix
  doc: The prefix for results files.
  type: string
  inputBinding:
    prefix: --output-prefix
outputs: []
cwlVersion: v1.1
baseCommand:
- rgt-hint
- training
