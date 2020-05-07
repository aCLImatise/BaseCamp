class: CommandLineTool
id: deepsvr_train_classifier.cwl
inputs:
- id: training_file_path
  doc: Specify the pickle file produced by the 'prepare_data' command to be used to
    train a new classifier.
  type: string
  inputBinding:
    prefix: --training-file-path
- id: label_file_path
  doc: Specify the label (manual review call) pickle file produced by the 'prepare_data'
    command to be used to train a new classifier.
  type: string
  inputBinding:
    prefix: --label-file-path
- id: model_out_file_path
  doc: Specify output file path for model json file(default:./deepsvr_model.json)
  type: string
  inputBinding:
    prefix: --model-out-file-path
- id: weights_out_file_path
  doc: Specify output file path for model weights file(default:data/deepsvr_model_weights.h5)
  type: string
  inputBinding:
    prefix: --weights-out-file-path
outputs: []
cwlVersion: v1.1
baseCommand:
- deepsvr
- train-classifier
