class: CommandLineTool
id: scpred_train_model.R.cwl
inputs:
- id: input_object
  doc: Path to the input object of scPred or seurat class in .rds format
  type: string
  inputBinding:
    prefix: --input-object
- id: train_id
  doc: ID of the training dataset (optional)
  type: string
  inputBinding:
    prefix: --train-id
- id: model
  doc: 'Model type used for training. Must be one of the models supported by Caret
    package.  Default: svmRadial'
  type: string
  inputBinding:
    prefix: --model
- id: resample_method
  doc: Resampling method used for model fit evaluation
  type: string
  inputBinding:
    prefix: --resample-method
- id: iter_num
  doc: 'Number of resampling iterations. Default: 5'
  type: string
  inputBinding:
    prefix: --iter-num
- id: random_seed
  doc: Random seed
  type: string
  inputBinding:
    prefix: --random-seed
- id: allow_parallel
  doc: 'Should parallel processing be allowed? Default: TRUE'
  type: string
  inputBinding:
    prefix: --allow-parallel
- id: output_path
  doc: Path for the output scPred object in .rds format
  type: string
  inputBinding:
    prefix: --output-path
- id: training_results
  doc: Path for training step results object in .rds format
  type: string
  inputBinding:
    prefix: --training-results
- id: train_probs_plot
  doc: Path for training probabilities plot in .png format
  type: string
  inputBinding:
    prefix: --train-probs-plot
outputs: []
cwlVersion: v1.1
baseCommand:
- scpred_train_model.R
