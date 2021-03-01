class: CommandLineTool
id: scpred_train_model.R.cwl
inputs:
- id: in_input_object
  doc: Path to the input object of Seurat class in .rds format
  type: File?
  inputBinding:
    prefix: --input-object
- id: in_train_id
  doc: ID of the training dataset (optional)
  type: string?
  inputBinding:
    prefix: --train-id
- id: in_model
  doc: "Model type used for training. Must be one of the models supported by Caret\
    \ package.\nDefault: svmRadial"
  type: string?
  inputBinding:
    prefix: --model
- id: in_resample_method
  doc: Resampling method used for model fit evaluation
  type: string?
  inputBinding:
    prefix: --resample-method
- id: in_iter_num
  doc: 'Number of resampling iterations. Default: 5'
  type: long?
  inputBinding:
    prefix: --iter-num
- id: in_random_seed
  doc: Random seed
  type: string?
  inputBinding:
    prefix: --random-seed
- id: in_allow_parallel
  doc: 'Should parallel processing be allowed? Default: TRUE'
  type: string?
  inputBinding:
    prefix: --allow-parallel
- id: in_num_cores
  doc: For parallel processing, how many cores should be used?
  type: long?
  inputBinding:
    prefix: --num-cores
- id: in_tune_length
  doc: An integer denoting the amount of granularity in the tuning parameter grid
  type: long?
  inputBinding:
    prefix: --tune-length
- id: in_metric
  doc: Performance metric to be used to select best model
  type: string?
  inputBinding:
    prefix: --metric
- id: in_preprocess
  doc: "A string vector that defines a pre-processing of the predictor data. Enter\
    \ values as comma-separated string. Current possibilities are\n'BoxCox', 'YeoJohnson',\
    \ 'expoTrans', 'center', 'scale', 'range', 'knnImpute', 'bagImpute', 'medianImpute'\n\
    'pca', 'ica' and 'spatialSign'. The default is 'center' and 'scale'."
  type: string?
  inputBinding:
    prefix: --preprocess
- id: in_return_data
  doc: 'If TRUE, training data is returned within scPred object. Default: FALSE'
  type: string?
  inputBinding:
    prefix: --return-data
- id: in_save_predictions
  doc: "Specifies the set of hold-out predictions for each resample that should be\n\
    returned. Values can be either 'all', 'final' or 'none'."
  type: string?
  inputBinding:
    prefix: --save-predictions
- id: in_reclassify
  doc: Cell types to reclassify using a different model
  type: string?
  inputBinding:
    prefix: --reclassify
- id: in_output_path
  doc: Path for the output scPred object in .rds format
  type: File?
  inputBinding:
    prefix: --output-path
- id: in_get_scp_red
  doc: 'Should scpred object be extracted from Seurat object after model training?
    Default: FALSE'
  type: string?
  inputBinding:
    prefix: --get-scpred
- id: in_train_probs_plot
  doc: Path for training probabilities plot in .png format
  type: File?
  inputBinding:
    prefix: --train-probs-plot
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_path
  doc: Path for the output scPred object in .rds format
  type: File?
  outputBinding:
    glob: $(inputs.in_output_path)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/scpred-cli:0.1.0--1
cwlVersion: v1.1
baseCommand:
- scpred_train_model.R
