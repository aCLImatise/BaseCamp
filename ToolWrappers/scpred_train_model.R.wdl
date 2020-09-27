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
    File? output_path
    File? training_results
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
      ~{if defined(output_path) then ("--output-path " +  '"' + output_path + '"') else ""} \
      ~{if defined(training_results) then ("--training-results " +  '"' + training_results + '"') else ""} \
      ~{if defined(train_probs_plot) then ("--train-probs-plot " +  '"' + train_probs_plot + '"') else ""}
  >>>
  parameter_meta {
    input_object: "Path to the input object of scPred or seurat class in .rds format"
    train_id: "ID of the training dataset (optional)"
    model: "Model type used for training. Must be one of the models supported by Caret package.\\nDefault: svmRadial"
    resample_method: "Resampling method used for model fit evaluation"
    iter_num: "Number of resampling iterations. Default: 5"
    random_seed: "Random seed"
    allow_parallel: "Should parallel processing be allowed? Default: TRUE"
    output_path: "Path for the output scPred object in .rds format"
    training_results: "Path for training step results object in .rds format"
    train_probs_plot: "Path for training probabilities plot in .png format"
  }
  output {
    File out_stdout = stdout()
    File out_output_path = "${in_output_path}"
  }
}