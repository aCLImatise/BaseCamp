class: CommandLineTool
id: scpred_train_model.R.cwl
inputs:
- id: in_input_object
  doc: Path to the input object of scPred or seurat class in .rds format
  type: File
  inputBinding:
    prefix: --input-object
- id: in_train_id
  doc: ID of the training dataset (optional)
  type: string
  inputBinding:
    prefix: --train-id
- id: in_model
  doc: "Model type used for training. Must be one of the models supported by Caret\
    \ package.\nDefault: svmRadial"
  type: string
  inputBinding:
    prefix: --model
- id: in_resample_method
  doc: Resampling method used for model fit evaluation
  type: string
  inputBinding:
    prefix: --resample-method
- id: in_iter_num
  doc: 'Number of resampling iterations. Default: 5'
  type: long
  inputBinding:
    prefix: --iter-num
- id: in_random_seed
  doc: Random seed
  type: string
  inputBinding:
    prefix: --random-seed
- id: in_allow_parallel
  doc: 'Should parallel processing be allowed? Default: TRUE'
  type: string
  inputBinding:
    prefix: --allow-parallel
- id: in_output_path
  doc: Path for the output scPred object in .rds format
  type: File
  inputBinding:
    prefix: --output-path
- id: in_training_results
  doc: Path for training step results object in .rds format
  type: File
  inputBinding:
    prefix: --training-results
- id: in_train_probs_plot
  doc: Path for training probabilities plot in .png format
  type: File
  inputBinding:
    prefix: --train-probs-plot
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_path
  doc: Path for the output scPred object in .rds format
  type: File
  outputBinding:
    glob: $(inputs.in_output_path)
cwlVersion: v1.1
baseCommand:
- scpred_train_model.R
