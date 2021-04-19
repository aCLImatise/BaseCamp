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
    String? use_library
    Boolean? write_library
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
      ~{if defined(log_level) then ("--log_level " +  '"' + log_level + '"') else ""} \
      ~{if defined(use_library) then ("--use_library " +  '"' + use_library + '"') else ""} \
      ~{if (write_library) then "--write_library" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/deeplc:0.1.29--pyhdfd78af_0"
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
    use_library: "Use a library with previously predicted retention\\ntimes, argument takes a string with the location to\\nthe library"
    write_library: "Append to a library with predicted retention times,\\nwill write to the file specified by --use_library"
  }
  output {
    File out_stdout = stdout()
    File out_file_pred_out = "${in_file_pred_out}"
  }
}