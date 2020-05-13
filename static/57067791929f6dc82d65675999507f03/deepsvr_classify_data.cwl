class: CommandLineTool
id: deepsvr_classify_data.cwl
inputs:
- id: prepared_data_path
  doc: Specify the 'train.pkl' file produced by the 'prepare_data' to perform inference
    on. Ignore the call.pkl used in training classifiers
  type: string
  inputBinding:
    prefix: --prepared-data-path
- id: model_file_path
  doc: Specify the file path for the model json file. Created by the train_classifier
    command.
  type: string
  inputBinding:
    prefix: --model-file-path
- id: model_weights_path
  doc: Specify the file path for the model weights file. Created by the train_classifier
    command.
  type: string
  inputBinding:
    prefix: --model-weights-path
- id: predictions_out_path
  doc: Specify the file path for the predictions tab separated file.
  type: string
  inputBinding:
    prefix: --predictions-out-path
outputs: []
cwlVersion: v1.1
baseCommand:
- deepsvr
- classify-data
