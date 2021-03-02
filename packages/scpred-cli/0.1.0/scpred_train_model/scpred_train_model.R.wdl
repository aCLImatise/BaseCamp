version 1.0

task ScpredTrainModelR {
  input {
    File? input_object
    String? train_id
    String? model
    String? resample_method
    Int? iter_num
    String? random_seed
    String? allow_parallel
    Int? num_cores
    Int? tune_length
    String? metric
    String? preprocess
    String? return_data
    String? save_predictions
    String? reclassify
    File? output_path
    String? get_scp_red
    File? train_probs_plot
  }
  command <<<
    scpred_train_model_R \
      ~{if defined(input_object) then ("--input-object " +  '"' + input_object + '"') else ""} \
      ~{if defined(train_id) then ("--train-id " +  '"' + train_id + '"') else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(resample_method) then ("--resample-method " +  '"' + resample_method + '"') else ""} \
      ~{if defined(iter_num) then ("--iter-num " +  '"' + iter_num + '"') else ""} \
      ~{if defined(random_seed) then ("--random-seed " +  '"' + random_seed + '"') else ""} \
      ~{if defined(allow_parallel) then ("--allow-parallel " +  '"' + allow_parallel + '"') else ""} \
      ~{if defined(num_cores) then ("--num-cores " +  '"' + num_cores + '"') else ""} \
      ~{if defined(tune_length) then ("--tune-length " +  '"' + tune_length + '"') else ""} \
      ~{if defined(metric) then ("--metric " +  '"' + metric + '"') else ""} \
      ~{if defined(preprocess) then ("--preprocess " +  '"' + preprocess + '"') else ""} \
      ~{if defined(return_data) then ("--return-data " +  '"' + return_data + '"') else ""} \
      ~{if defined(save_predictions) then ("--save-predictions " +  '"' + save_predictions + '"') else ""} \
      ~{if defined(reclassify) then ("--reclassify " +  '"' + reclassify + '"') else ""} \
      ~{if defined(output_path) then ("--output-path " +  '"' + output_path + '"') else ""} \
      ~{if defined(get_scp_red) then ("--get-scpred " +  '"' + get_scp_red + '"') else ""} \
      ~{if defined(train_probs_plot) then ("--train-probs-plot " +  '"' + train_probs_plot + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/scpred-cli:0.1.0--1"
  }
  parameter_meta {
    input_object: "Path to the input object of Seurat class in .rds format"
    train_id: "ID of the training dataset (optional)"
    model: "Model type used for training. Must be one of the models supported by Caret package.\\nDefault: svmRadial"
    resample_method: "Resampling method used for model fit evaluation"
    iter_num: "Number of resampling iterations. Default: 5"
    random_seed: "Random seed"
    allow_parallel: "Should parallel processing be allowed? Default: TRUE"
    num_cores: "For parallel processing, how many cores should be used?"
    tune_length: "An integer denoting the amount of granularity in the tuning parameter grid"
    metric: "Performance metric to be used to select best model"
    preprocess: "A string vector that defines a pre-processing of the predictor data. Enter values as comma-separated string. Current possibilities are\\n'BoxCox', 'YeoJohnson', 'expoTrans', 'center', 'scale', 'range', 'knnImpute', 'bagImpute', 'medianImpute'\\n'pca', 'ica' and 'spatialSign'. The default is 'center' and 'scale'."
    return_data: "If TRUE, training data is returned within scPred object. Default: FALSE"
    save_predictions: "Specifies the set of hold-out predictions for each resample that should be\\nreturned. Values can be either 'all', 'final' or 'none'."
    reclassify: "Cell types to reclassify using a different model"
    output_path: "Path for the output scPred object in .rds format"
    get_scp_red: "Should scpred object be extracted from Seurat object after model training? Default: FALSE"
    train_probs_plot: "Path for training probabilities plot in .png format"
  }
  output {
    File out_stdout = stdout()
    File out_output_path = "${in_output_path}"
  }
}