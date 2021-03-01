version 1.0

task SpectralCoefficient {
  input {
    File? config
    File? output_plot_path
    File? input_dataset_path
    File? output_results_path
  }
  command <<<
    spectral_coefficient \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(output_plot_path) then ("--output_plot_path " +  '"' + output_plot_path + '"') else ""} \
      ~{if defined(input_dataset_path) then ("--input_dataset_path " +  '"' + input_dataset_path + '"') else ""} \
      ~{if defined(output_results_path) then ("--output_results_path " +  '"' + output_results_path + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/biobb_ml:3.5.0--pyhafabc51_3"
  }
  parameter_meta {
    config: "Configuration file"
    output_plot_path: "Path to the elbow and gap methods plot. Accepted formats: png."
    input_dataset_path: "Path to the input dataset. Accepted formats: csv."
    output_results_path: "Table with WCSS (elbow method), Gap and Silhouette coefficients for each cluster. Accepted formats: csv.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_plot_path = "${in_output_plot_path}"
    File out_output_results_path = "${in_output_results_path}"
  }
}