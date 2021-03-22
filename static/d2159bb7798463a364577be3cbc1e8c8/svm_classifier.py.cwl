class: CommandLineTool
id: svm_classifier.py.cwl
inputs:
- id: in_train_wide
  doc: wide part of the train dataset.
  type: string?
  inputBinding:
    prefix: --train_wide
- id: in_train_design
  doc: design part of the train dataset.
  type: string?
  inputBinding:
    prefix: --train_design
- id: in_test_wide
  doc: wide part of the test dataset.
  type: string?
  inputBinding:
    prefix: --test_wide
- id: in_test_design
  doc: design part of the test dataset.
  type: string?
  inputBinding:
    prefix: --test_design
- id: in_group
  doc: "Name of column in design file with Group/treatment\ninformation."
  type: File?
  inputBinding:
    prefix: --group
- id: in_id
  doc: Name of the column with unique identifiers.
  type: string?
  inputBinding:
    prefix: --ID
- id: in_kernel
  doc: 'choice of kernel function: rbf, linear, poly, sigmoid.'
  type: string?
  inputBinding:
    prefix: --kernel
- id: in_degree
  doc: (integer) degree for the polynomial kernel, default 3.
  type: long?
  inputBinding:
    prefix: --degree
- id: in_positive_regularization_parameter_parameter
  doc: "positive regularization parameter. This parameter is\nignored when -cv is\
    \ single or double"
  type: string?
  inputBinding:
    prefix: --C
- id: in_cross_validation
  doc: "Choice of cross-validation procedure for the\nregularization parameter -c\
    \ determinantion: none,\nsingle, double."
  type: string?
  inputBinding:
    prefix: --cross_validation
- id: in_c_lower_bound
  doc: "positive regularization parameter lower bound. Ignored\nif -cv is none and\
    \ -c is specified."
  type: string?
  inputBinding:
    prefix: --C_lower_bound
- id: in_c_upper_bound
  doc: "positive regularization parameter upper bound. Ignored\nif -cv is none and\
    \ -c is specified."
  type: string?
  inputBinding:
    prefix: --C_upper_bound
- id: in_positive_coefficient_kernel
  doc: positive coefficient in kernel function.
  type: string?
  inputBinding:
    prefix: --a
- id: in_independent_term_coefficient
  doc: independent term coefficient in kernel function.
  type: string?
  inputBinding:
    prefix: --b
- id: in_out_classification
  doc: "Name of the output file to store classification\nperformed on the traing data\
    \ set. TSV format."
  type: File?
  inputBinding:
    prefix: --outClassification
- id: in_out_classification_accuracy
  doc: "Output classification accuracy value on the training\ndata set."
  type: string?
  inputBinding:
    prefix: --outClassificationAccuracy
- id: in_out_prediction
  doc: "Name of the output file to store prediction performed\non the target data\
    \ set. TSV format."
  type: File?
  inputBinding:
    prefix: --outPrediction
- id: in_out_prediction_accuracy
  doc: "Output prediction accuracy value on the target data\nset.\n"
  type: string?
  inputBinding:
    prefix: --outPredictionAccuracy
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_classification
  doc: "Name of the output file to store classification\nperformed on the traing data\
    \ set. TSV format."
  type: File?
  outputBinding:
    glob: $(inputs.in_out_classification)
- id: out_out_prediction
  doc: "Name of the output file to store prediction performed\non the target data\
    \ set. TSV format."
  type: File?
  outputBinding:
    glob: $(inputs.in_out_prediction)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/secimtools:21.3.4.2--py_0
cwlVersion: v1.1
baseCommand:
- svm_classifier.py
