version 1.0

task ScvisTrain {
  input {
    File? data_matrix_file
    File? config_file
    File? out_dir
    File? data_label_file
    File? pre_trained_model_file
    Int? normalize
    Boolean? verbose
    String? verbose_interval
    Boolean? show_plot
  }
  command <<<
    scvis train \
      ~{if defined(data_matrix_file) then ("--data_matrix_file " +  '"' + data_matrix_file + '"') else ""} \
      ~{if defined(config_file) then ("--config_file " +  '"' + config_file + '"') else ""} \
      ~{if defined(out_dir) then ("--out_dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(data_label_file) then ("--data_label_file " +  '"' + data_label_file + '"') else ""} \
      ~{if defined(pre_trained_model_file) then ("--pretrained_model_file " +  '"' + pre_trained_model_file + '"') else ""} \
      ~{if defined(normalize) then ("--normalize " +  '"' + normalize + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(verbose_interval) then ("--verbose_interval " +  '"' + verbose_interval + '"') else ""} \
      ~{if (show_plot) then "--show_plot" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    data_matrix_file: "The high-dimensional data matrix"
    config_file: "Path to a yaml format configuration file"
    out_dir: "Path for output files"
    data_label_file: "Just used for colouring scatter plots"
    pre_trained_model_file: "A pretrained scvis model, continue to train this model"
    normalize: "The data will be divided by this number if provided\\n(default: the maximum value)."
    verbose: "Print running information"
    verbose_interval: "Print running information after running # of mini-\\nbatches"
    show_plot: "Plot intermediate embedding when this parameter is set"
  }
  output {
    File out_stdout = stdout()
    File out_out_dir = "${in_out_dir}"
  }
}