version 1.0

task Deeplc {
  input {
    File? file_pred
    File? file_cal
    File? file_pred_out
    Array[File] file_model
    Int? dict_divider
    Boolean? plot_predictions
    Int? n_threads
    String? log_level
  }
  command <<<
    deeplc \
      ~{if defined(file_pred) then ("--file_pred " +  '"' + file_pred + '"') else ""} \
      ~{if defined(file_cal) then ("--file_cal " +  '"' + file_cal + '"') else ""} \
      ~{if defined(file_pred_out) then ("--file_pred_out " +  '"' + file_pred_out + '"') else ""} \
      ~{if defined(file_model) then ("--file_model " +  '"' + file_model + '"') else ""} \
      ~{if defined(dict_divider) then ("--dict_divider " +  '"' + dict_divider + '"') else ""} \
      ~{if (plot_predictions) then "--plot_predictions" else ""} \
      ~{if defined(n_threads) then ("--n_threads " +  '"' + n_threads + '"') else ""} \
      ~{if defined(log_level) then ("--log_level " +  '"' + log_level + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_pred: "Path to peptide file for which to make predictions\\n(required)"
    file_cal: "Path to peptide file with retention times to use for\\ncalibration (optional)"
    file_pred_out: "Path to output file with predictions (optional)"
    file_model: "Path to prediction model(s). Seperate with spaces.\\nLeave empty to select the best of the default models\\n(optional)"
    dict_divider: "Batch size (in peptides) for predicting the retention\\ntime. Set lower to decrease memory footprint\\n(optional, default=250000)"
    plot_predictions: "Save scatter plot of predictions vs observations\\n(default=False)"
    n_threads: "Number of threads to use (optional, default=maximum\\navailable)"
    log_level: "Logging level (debug, info, warning, error, or\\ncritical; default=info)"
  }
  output {
    File out_stdout = stdout()
    File out_file_pred_out = "${in_file_pred_out}"
  }
}