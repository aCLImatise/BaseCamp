version 1.0

task SvmClassifierpy {
  input {
    String? train_wide
    String? train_design
    String? test_wide
    String? test_design
    File? group
    String? id
    String? kernel
    Int? degree
    String? positive_regularization_parameter_parameter
    String? cross_validation
    String? c_lower_bound
    String? c_upper_bound
    String? positive_coefficient_kernel
    String? independent_term_coefficient
    File? out_classification
    String? out_classification_accuracy
    File? out_prediction
    String? out_prediction_accuracy
  }
  command <<<
    svm_classifier_py \
      ~{if defined(train_wide) then ("--train_wide " +  '"' + train_wide + '"') else ""} \
      ~{if defined(train_design) then ("--train_design " +  '"' + train_design + '"') else ""} \
      ~{if defined(test_wide) then ("--test_wide " +  '"' + test_wide + '"') else ""} \
      ~{if defined(test_design) then ("--test_design " +  '"' + test_design + '"') else ""} \
      ~{if defined(group) then ("--group " +  '"' + group + '"') else ""} \
      ~{if defined(id) then ("--ID " +  '"' + id + '"') else ""} \
      ~{if defined(kernel) then ("--kernel " +  '"' + kernel + '"') else ""} \
      ~{if defined(degree) then ("--degree " +  '"' + degree + '"') else ""} \
      ~{if defined(positive_regularization_parameter_parameter) then ("--C " +  '"' + positive_regularization_parameter_parameter + '"') else ""} \
      ~{if defined(cross_validation) then ("--cross_validation " +  '"' + cross_validation + '"') else ""} \
      ~{if defined(c_lower_bound) then ("--C_lower_bound " +  '"' + c_lower_bound + '"') else ""} \
      ~{if defined(c_upper_bound) then ("--C_upper_bound " +  '"' + c_upper_bound + '"') else ""} \
      ~{if defined(positive_coefficient_kernel) then ("--a " +  '"' + positive_coefficient_kernel + '"') else ""} \
      ~{if defined(independent_term_coefficient) then ("--b " +  '"' + independent_term_coefficient + '"') else ""} \
      ~{if defined(out_classification) then ("--outClassification " +  '"' + out_classification + '"') else ""} \
      ~{if defined(out_classification_accuracy) then ("--outClassificationAccuracy " +  '"' + out_classification_accuracy + '"') else ""} \
      ~{if defined(out_prediction) then ("--outPrediction " +  '"' + out_prediction + '"') else ""} \
      ~{if defined(out_prediction_accuracy) then ("--outPredictionAccuracy " +  '"' + out_prediction_accuracy + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/secimtools:21.3.4.2--py_0"
  }
  parameter_meta {
    train_wide: "wide part of the train dataset."
    train_design: "design part of the train dataset."
    test_wide: "wide part of the test dataset."
    test_design: "design part of the test dataset."
    group: "Name of column in design file with Group/treatment\\ninformation."
    id: "Name of the column with unique identifiers."
    kernel: "choice of kernel function: rbf, linear, poly, sigmoid."
    degree: "(integer) degree for the polynomial kernel, default 3."
    positive_regularization_parameter_parameter: "positive regularization parameter. This parameter is\\nignored when -cv is single or double"
    cross_validation: "Choice of cross-validation procedure for the\\nregularization parameter -c determinantion: none,\\nsingle, double."
    c_lower_bound: "positive regularization parameter lower bound. Ignored\\nif -cv is none and -c is specified."
    c_upper_bound: "positive regularization parameter upper bound. Ignored\\nif -cv is none and -c is specified."
    positive_coefficient_kernel: "positive coefficient in kernel function."
    independent_term_coefficient: "independent term coefficient in kernel function."
    out_classification: "Name of the output file to store classification\\nperformed on the traing data set. TSV format."
    out_classification_accuracy: "Output classification accuracy value on the training\\ndata set."
    out_prediction: "Name of the output file to store prediction performed\\non the target data set. TSV format."
    out_prediction_accuracy: "Output prediction accuracy value on the target data\\nset.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_out_classification = "${in_out_classification}"
    File out_out_prediction = "${in_out_prediction}"
  }
}