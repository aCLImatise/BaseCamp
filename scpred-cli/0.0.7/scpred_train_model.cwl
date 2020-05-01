#!/usr/bin/env cwl-runner

baseCommand:
- scpred_train_model.R
class: CommandLineTool
cwlVersion: v1.0
id: scpred_train_model.r
inputs:
- doc: Path to the input object of scPred or seurat class in .rds format
  id: input_object
  inputBinding:
    prefix: --input-object
  type: string
- doc: ID of the training dataset (optional)
  id: train_id
  inputBinding:
    prefix: --train-id
  type: string
- doc: 'Model type used for training. Must be one of the models supported by Caret
    package.  Default: svmRadial'
  id: model
  inputBinding:
    prefix: --model
  type: string
- doc: Resampling method used for model fit evaluation
  id: resample_method
  inputBinding:
    prefix: --resample-method
  type: string
- doc: 'Number of resampling iterations. Default: 5'
  id: iter_num
  inputBinding:
    prefix: --iter-num
  type: string
- doc: Random seed
  id: random_seed
  inputBinding:
    prefix: --random-seed
  type: string
- doc: 'Should parallel processing be allowed? Default: TRUE'
  id: allow_parallel
  inputBinding:
    prefix: --allow-parallel
  type: string
- doc: Path for the output scPred object in .rds format
  id: output_path
  inputBinding:
    prefix: --output-path
  type: string
- doc: Path for training step results object in .rds format
  id: training_results
  inputBinding:
    prefix: --training-results
  type: string
- doc: Path for training probabilities plot in .png format
  id: train_probs_plot
  inputBinding:
    prefix: --train-probs-plot
  type: string
