version 1.0

task CorrelationMatrix {
  input {
    File? config
    File? input_dataset_path
    File? output_plot_path
  }
  command <<<
    correlation_matrix \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(input_dataset_path) then ("--input_dataset_path " +  '"' + input_dataset_path + '"') else ""} \
      ~{if defined(output_plot_path) then ("--output_plot_path " +  '"' + output_plot_path + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    config: "Configuration file"
    input_dataset_path: "Path to the input dataset. Accepted formats: csv."
    output_plot_path: "Path to the correlation matrix plot. Accepted formats: png.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_plot_path = "${in_output_plot_path}"
  }
}