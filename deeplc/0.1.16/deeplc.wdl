version 1.0

task Deeplc {
  input {
    String? batch_num
    Boolean? plot_predictions
    String? n_threads
    String? log_level
    File? file_pred
    File? file_cal
  }
  command <<<
    deeplc \
      ~{if defined(batch_num) then ("--batch_num " +  '"' + batch_num + '"') else ""} \
      ~{true="--plot_predictions" false="" plot_predictions} \
      ~{if defined(n_threads) then ("--n_threads " +  '"' + n_threads + '"') else ""} \
      ~{if defined(log_level) then ("--log_level " +  '"' + log_level + '"') else ""} \
      ~{if defined(file_pred) then ("--file_pred " +  '"' + file_pred + '"') else ""} \
      ~{if defined(file_cal) then ("--file_cal " +  '"' + file_cal + '"') else ""}
  >>>
  parameter_meta {
    batch_num: "Batch size (in peptides) for predicting the retention time. Set lower to decrease memory footprint (optional, default=250000)"
    plot_predictions: "Save scatter plot of predictions vs observations (default=False)"
    n_threads: "Number of threads to use (optional, default=maximum available)"
    log_level: "Logging level (debug, info, warning, error, or critical; default=info)"
    file_pred: ""
    file_cal: ""
  }
}